// // import Cycles "mo:base/ExperimentalCycles";
// // import Nat64 "mo:base/Nat64";
// // import bb "bb";


// // actor {
// //   public func main(a : Nat, b : Nat, s : Nat) : async (Nat, Nat) {
// //     Cycles.add(7_000_000_000_000);
// //     let bb1 = bb.bb(1, a);
// //     let bb2 = bb.bb(2, b);

// //     let sentAmount = bb1.send(s);

// //     bb2.get(sentAmount);

// //     let balance1 = bb1.check();
// //     let balance2 = bb2.check();
// //     return (balance1, balance2);
// //   };
// // };

// actor bloodbank_a {
//     // General information
//     var id : Nat = 101;
//     var name : Text = " hospital";
//     var location : Text = "ABC, Jalandhar";
//     var contact : Nat = 7596561445;
//     var director_name : Text = "BK Kamo";
//     var bloodbank_manager_name : Text = "Amranaam Bachhan";

//     // levels

//     var rdp_t : Nat = 10;
//     var rdp_c : Nat = 5;

//     var cprec_t : Nat = 10;
//     var cprec_c : Nat = 10;

//     var whole_blood = {
//         // a_p_t == a positive total

//         var a_p_t : Nat = 10;
//         var b_p_t : Nat = 10;
//         var ab_p_t : Nat = 10;
//         var o_p_t : Nat = 10;
//         var a_n_t : Nat = 10;
//         var b_n_t : Nat = 10;
//         var ab_n_t : Nat = 10;
//         var o_n_t : Nat = 10;

//         // a_n_c == a negative current
//         var a_p_c : Nat = 3;
//         var b_p_c : Nat = 0;
//         var ab_p_c : Nat = 7;
//         var o_p_c : Nat = 4;
//         var a_n_c : Nat = 6;
//         var b_n_c : Nat = 10;
//         var ab_n_c : Nat = 4;
//         var o_n_c : Nat = 9;
//     };

//     var prbc = {
//         // a_p_t == a positive total

//         var a_p_t : Nat = 10;
//         var b_p_t : Nat = 10;
//         var ab_p_t : Nat = 10;
//         var o_p_t : Nat = 10;
//         var a_n_t : Nat = 10;
//         var b_n_t : Nat = 10;
//         var ab_n_t : Nat = 10;
//         var o_n_t : Nat = 10;

//         // a_n_c == a negative current
//         var a_p_c : Nat = 3;
//         var b_p_c : Nat = 0;
//         var ab_p_c : Nat = 7;
//         var o_p_c : Nat = 4;
//         var a_n_c : Nat = 6;
//         var b_n_c : Nat = 10;
//         var ab_n_c : Nat = 4;
//         var o_n_c : Nat = 9;
//     };

//     var sdp = {
//         // a_p_t == a positive total

//         var a_p_t : Nat = 10;
//         var b_p_t : Nat = 10;
//         var ab_p_t : Nat = 10;
//         var o_p_t : Nat = 10;
//         var a_n_t : Nat = 10;
//         var b_n_t : Nat = 10;
//         var ab_n_t : Nat = 10;
//         var o_n_t : Nat = 10;

//         // a_n_c == a negative current
//         var a_p_c : Nat = 3;
//         var b_p_c : Nat = 0;
//         var ab_p_c : Nat = 7;
//         var o_p_c : Nat = 4;
//         var a_n_c : Nat = 6;
//         var b_n_c : Nat = 10;
//         var ab_n_c : Nat = 4;
//         var o_n_c : Nat = 9;
//     };

//     var ffp = {
//         // a_p_t == a positive total

//         var a_p_t : Nat = 10;
//         var b_p_t : Nat = 10;
//         var ab_p_t : Nat = 10;
//         var o_p_t : Nat = 10;
//         var a_n_t : Nat = 10;
//         var b_n_t : Nat = 10;
//         var ab_n_t : Nat = 10;
//         var o_n_t : Nat = 10;

//         // a_n_c == a negative current
//         var a_p_c : Nat = 3;
//         var b_p_c : Nat = 0;
//         var ab_p_c : Nat = 7;
//         var o_p_c : Nat = 4;
//         var a_n_c : Nat = 6;
//         var b_n_c : Nat = 10;
//         var ab_n_c : Nat = 4;
//         var o_n_c : Nat = 9;
//     };

//     // ========================================= Functions ============================================

//     func actAndCheck(current : Nat, total : Nat, quant : Nat, action : Bool) : Nat {
//         var temp = current;
//         if (action == true) {temp += quant}
//         else {temp -= quant};

//         if (temp < 0 or temp > total) {return current}
//         else {return temp};
//     };

//     // ========================================= Entrypoints ============================================

//     public query func get_id() : async Nat {
//         id
//     };
    
//     public query func get_name() : async Text {
//         name
//     };

//     public query func get_location() : async Text {
//         location
//     };

//     public query func get_contact() : async Nat {
//         contact
//     };

//     public query func get_director_name() : async Text {
//         director_name
//     };

//     public query func get_bloodbank_manager_name() : async Text {
//         bloodbank_manager_name
//     };

//     // change this accordingly
//     public query func get_blood_quant() : async [(Nat, Nat)] {
//         return [
//             (rdp_c, rdp_t),
//             (cprec_c, cprec_t),
//             (whole_blood.a_p_c, whole_blood.a_p_t),
//             (whole_blood.b_p_c, whole_blood.b_p_t),
//             (whole_blood.ab_p_c, whole_blood.ab_p_t),
//             (whole_blood.o_p_c, whole_blood.o_p_t),
//             (whole_blood.a_n_c, whole_blood.a_n_t),
//             (whole_blood.b_n_c, whole_blood.b_n_t),
//             (whole_blood.ab_n_c, whole_blood.ab_n_t),
//             (whole_blood.o_n_c, whole_blood.o_n_t),
//             (prbc.a_p_c, prbc.a_p_t),
//             (prbc.b_p_c, prbc.b_p_t),
//             (prbc.ab_p_c, prbc.ab_p_t),
//             (prbc.o_p_c, prbc.o_p_t),
//             (prbc.a_n_c, prbc.a_n_t),
//             (prbc.b_n_c, prbc.b_n_t),
//             (prbc.ab_n_c, prbc.ab_n_t),
//             (prbc.o_n_c, prbc.o_n_t),
//             (sdp.a_p_c, sdp.a_p_t),
//             (sdp.b_p_c, sdp.b_p_t),
//             (sdp.ab_p_c, sdp.ab_p_t),
//             (sdp.o_p_c, sdp.o_p_t),
//             (sdp.a_n_c, sdp.a_n_t),
//             (sdp.b_n_c, sdp.b_n_t),
//             (sdp.ab_n_c, sdp.ab_n_t),
//             (sdp.o_n_c, sdp.o_n_t),
//             (ffp.a_p_c, ffp.a_p_t),
//             (ffp.b_p_c, ffp.b_p_t),
//             (ffp.ab_p_c, ffp.ab_p_t),
//             (ffp.o_p_c, ffp.o_p_t),
//             (ffp.a_n_c, ffp.a_n_t),
//             (ffp.b_n_c, ffp.b_n_t),
//             (ffp.ab_n_c, ffp.ab_n_t),
//             (ffp.o_n_c, ffp.o_n_t)
//         ];
//     };

//     public func modify(category : Text, btype : Text, quant : Nat, action : Bool) : async Nat {
//         // action = 1 for addition, 0 for subtraction
//         switch (category) {
//             case ("rdp") {
//                 rdp_c := actAndCheck(rdp_c, rdp_t, quant, action);
//                 return rdp_c;
//             };
//             case ("cprec") {
//                 cprec_c := actAndCheck(cprec_c, cprec_t, quant, action);
//                 return cprec_c;
//             };
//             case ("whole_blood") {
//                 switch(btype) {
//                     case("a+") {whole_blood.a_p_c := actAndCheck(whole_blood.a_p_c, whole_blood.a_p_t, quant, action); return whole_blood.a_p_c};
//                     case("b+") {whole_blood.b_p_c := actAndCheck(whole_blood.b_p_c, whole_blood.b_p_t, quant, action); return whole_blood.b_p_c};
//                     case("ab+") {whole_blood.ab_p_c := actAndCheck(whole_blood.ab_p_c, whole_blood.ab_p_t, quant, action); return whole_blood.ab_p_c};
//                     case("o+") {whole_blood.o_p_c := actAndCheck(whole_blood.o_p_c, whole_blood.o_p_t, quant, action); return whole_blood.o_p_c};
//                     case("a-") {whole_blood.a_n_c := actAndCheck(whole_blood.a_n_c, whole_blood.a_n_t, quant, action); return whole_blood.a_p_c};
//                     case("b-") {whole_blood.b_n_c := actAndCheck(whole_blood.b_n_c, whole_blood.b_n_t, quant, action); return whole_blood.b_p_c};
//                     case("ab-") {whole_blood.ab_n_c := actAndCheck(whole_blood.ab_n_c, whole_blood.ab_n_t, quant, action); return whole_blood.ab_p_c};
//                     case("o-") {whole_blood.o_n_c := actAndCheck(whole_blood.o_n_c, whole_blood.o_n_t, quant, action); return whole_blood.o_p_c};
//                     case _ {return 0}; // faulty
//                 };
//             };
//             case("prbc") {
//                 switch(btype) {
//                     case("a+") {prbc.a_p_c := actAndCheck(prbc.a_p_c, prbc.a_p_t, quant, action); return prbc.a_p_c};
//                     case("b+") {prbc.b_p_c := actAndCheck(prbc.b_p_c, prbc.b_p_t, quant, action); return prbc.b_p_c};
//                     case("ab+") {prbc.ab_p_c := actAndCheck(prbc.ab_p_c, prbc.ab_p_t, quant, action); return prbc.ab_p_c};
//                     case("o+") {prbc.o_p_c := actAndCheck(prbc.o_p_c, prbc.o_p_t, quant, action); return prbc.o_p_c};
//                     case("a-") {prbc.a_n_c := actAndCheck(prbc.a_n_c, prbc.a_n_t, quant, action); return prbc.a_p_c};
//                     case("b-") {prbc.b_n_c := actAndCheck(prbc.b_n_c, prbc.b_n_t, quant, action); return prbc.b_p_c};
//                     case("ab-") {prbc.ab_n_c := actAndCheck(prbc.ab_n_c, prbc.ab_n_t, quant, action); return prbc.ab_p_c};
//                     case("o-") {prbc.o_n_c := actAndCheck(prbc.o_n_c, prbc.o_n_t, quant, action); return prbc.o_p_c};
//                     case _ {return 0}; // faulty
//                 };
//             };
//             case("sdp") {
//                 switch(btype) {
//                     case("a+") {sdp.a_p_c := actAndCheck(sdp.a_p_c, sdp.a_p_t, quant, action); return sdp.a_p_c};
//                     case("b+") {sdp.b_p_c := actAndCheck(sdp.b_p_c, sdp.b_p_t, quant, action); return sdp.b_p_c};
//                     case("ab+") {sdp.ab_p_c := actAndCheck(sdp.ab_p_c, sdp.ab_p_t, quant, action); return sdp.ab_p_c};
//                     case("o+") {sdp.o_p_c := actAndCheck(sdp.o_p_c, sdp.o_p_t, quant, action); return sdp.o_p_c};
//                     case("a-") {sdp.a_n_c := actAndCheck(sdp.a_n_c, sdp.a_n_t, quant, action); return sdp.a_p_c};
//                     case("b-") {sdp.b_n_c := actAndCheck(sdp.b_n_c, sdp.b_n_t, quant, action); return sdp.b_p_c};
//                     case("ab-") {sdp.ab_n_c := actAndCheck(sdp.ab_n_c, sdp.ab_n_t, quant, action); return sdp.ab_p_c};
//                     case("o-") {sdp.o_n_c := actAndCheck(sdp.o_n_c, sdp.o_n_t, quant, action); return sdp.o_p_c};
//                     case _ {return 0}; // faulty
//                 };
//             };
//             case("ffp") {
//                 switch(btype) {
//                     case("a+") {ffp.a_p_c := actAndCheck(ffp.a_p_c, ffp.a_p_t, quant, action); return ffp.a_p_c};
//                     case("b+") {ffp.b_p_c := actAndCheck(ffp.b_p_c, ffp.b_p_t, quant, action); return ffp.b_p_c};
//                     case("ab+") {ffp.ab_p_c := actAndCheck(ffp.ab_p_c, ffp.ab_p_t, quant, action); return ffp.ab_p_c};
//                     case("o+") {ffp.o_p_c := actAndCheck(ffp.o_p_c, ffp.o_p_t, quant, action); return ffp.o_p_c};
//                     case("a-") {ffp.a_n_c := actAndCheck(ffp.a_n_c, ffp.a_n_t, quant, action); return ffp.a_p_c};
//                     case("b-") {ffp.b_n_c := actAndCheck(ffp.b_n_c, ffp.b_n_t, quant, action); return ffp.b_p_c};
//                     case("ab-") {ffp.ab_n_c := actAndCheck(ffp.ab_n_c, ffp.ab_n_t, quant, action); return ffp.ab_p_c};
//                     case("o-") {ffp.o_n_c := actAndCheck(ffp.o_n_c, ffp.o_n_t, quant, action); return ffp.o_p_c};
//                     case _ {return 0}; // faulty
//                 };
//             };
//             case _ {
//                 return 0; // faulty
//             }
//         };
//     };

    
// };