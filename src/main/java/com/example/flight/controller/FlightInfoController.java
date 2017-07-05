package com.example.flight.controller;

import com.example.flight.entity.SearchResult2;
import com.example.flight.resdata.FlightInformation;
import com.google.api.services.qpxExpress.model.LegInfo;
import com.google.api.services.qpxExpress.model.PricingInfo;
import com.google.api.services.qpxExpress.model.SegmentInfo;
import com.google.api.services.qpxExpress.model.SliceInfo;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FlightInfoController {

    @RequestMapping(value = "flight-info", params = "v", method = RequestMethod.GET)
    public String flightInfo(@RequestParam("id") String id, ModelMap model) {

        int n = FlightInformation.flightTripInfos.size();
        int item = 0;

        for (int i = 0; i < n; i++) {
            if (FlightInformation.flightTripInfos.get(i).getId().equals(id)) {
                item = i;
            }
        }

        List<LegInfo> leg = FlightInformation.flightTripInfos.get(item).getSlice().get(0).getSegment().get(0).getLeg();
        List<SegmentInfo> segment = FlightInformation.flightTripInfos.get(item).getSlice().get(0).getSegment();
        List<PricingInfo> price = FlightInformation.flightTripInfos.get(item).getPricing();

        model.addAttribute("SoDiemDung", leg.get(0).getDestinationTerminal());

        //Tính tổng giá tiền (tính luôn tiền thuế)
        double ThanhTien = 0;

        int SoNguoiLon = 0;
        int SoTreEm = 0;
        int SoEmBe = 0;

        double MotVeNguoiLon = 0;
        double MotVeTreEm = 0;
        double MotVeEmBe = 0;

        double TongVeNguoiLon = 0;
        double TongVeTreEm = 0;
        double TongVeEmBe = 0;

        for (int i = 0; i < price.size(); i++) {

            try {
                SoNguoiLon = price.get(i).getPassengers().getAdultCount();

                MotVeNguoiLon = Double.parseDouble(price.get(i).getSaleTotal().substring(3)); //Loại bỏ 3 ký tự đầu trong giá VND
                TongVeNguoiLon = MotVeNguoiLon * SoNguoiLon;

            } catch (NullPointerException e) {
                //khong nguoi lon
            }

            try {
                SoTreEm = price.get(i).getPassengers().getChildCount();

                MotVeTreEm = Double.parseDouble(price.get(i).getSaleTotal().substring(3)); //Loại bỏ 3 ký tự đầu trong giá VND
                TongVeTreEm = MotVeTreEm * SoTreEm;
            } catch (NullPointerException e) {
                //khong co tre em
            }

            try {
                SoEmBe = price.get(i).getPassengers().getInfantInSeatCount();

                MotVeEmBe = Double.parseDouble(price.get(i).getSaleTotal().substring(3)); //Loại bỏ 3 ký tự đầu trong giá VND
                TongVeEmBe = MotVeEmBe * SoEmBe;
            } catch (NullPointerException e) {
                //Khong co em be
            }

        }

        ThanhTien = TongVeNguoiLon + TongVeTreEm + TongVeEmBe;

        System.out.println("so nguoi lon " + SoNguoiLon);
        System.out.println("So tre em " + SoTreEm);
        System.out.println("So em be " + SoEmBe);
        System.out.println("Thanh tien " + ThanhTien);

        model.addAttribute("fOrigin", leg.get(0).getOrigin());
        model.addAttribute("fDestination", leg.get(0).getDestination());
        model.addAttribute("fAirline", segment.get(0).getFlight().getCarrier());
        model.addAttribute("fAircraft", leg.get(0).getAircraft());
        model.addAttribute("fArrive", leg.get(0).getArrivalTime());
        model.addAttribute("fDepart", leg.get(0).getDepartureTime());
        model.addAttribute("fPrice", price.get(0).getBaseFareTotal());

        return "flight_info";
    }

    @RequestMapping(value = "/a", method = RequestMethod.GET)
    public String a(@RequestParam("id") String id, ModelMap mm) {
        
        SearchResult2.id=id;
        
        int n = SearchResult2.ListKetQua.size();

        for (int i = 0; i < n; i++) {
            if (SearchResult2.ListKetQua.get(i).getId().equals(id)) {
                mm.addAttribute("searchResult", SearchResult2.ListKetQua.get(i));
                SearchResult2.TongGiaTien=SearchResult2.ListKetQua.get(i).getTongTienText2();
            }
        }

        return "flight_info";
    }
}
