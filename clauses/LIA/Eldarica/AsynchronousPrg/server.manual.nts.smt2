(set-info :origin "NTS benchmark converted to SMT-LIB2 using Eldarica (http://lara.epfl.ch/w/eldarica)")
(set-logic HORN)
(declare-fun main_seventloop (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun main_sr_readsuccess (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun main_sr2 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun main_sr1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun main_sservice_reqdispatch (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun main_serv1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun main_sserverdispatch (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun main_sserv1 (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun main_sinit (Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun main_si (Int Int Int Int Int Int Int Int Int Int) Bool)
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (main_sr_readsuccess ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (and (not (= ?O ?N)) (= ?G (+ ?L 1))) (and (and (and (= ?K ?F) (= ?M ?H)) (= ?N ?I)) (= ?O ?J)))) (main_seventloop ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (main_sr_readsuccess ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (= ?O ?N) (and (and (and (and (= ?K ?F) (= ?L ?G)) (= ?M ?H)) (= ?N ?I)) (= ?O ?J)))) (main_seventloop ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (main_sr2 ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (and (>= ?K 1) (= ?I (+ ?N ?K))) (and (and (and (= ?K ?F) (= ?L ?G)) (= ?M ?H)) (= ?O ?J)))) (main_sr_readsuccess ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (main_sr2 ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (and (<= ?K 0) (= ?G (+ ?L 1))) (and (and (and (= ?K ?F) (= ?M ?H)) (= ?N ?I)) (= ?O ?J)))) (main_seventloop ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (main_sr1 ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (and (>= ?F 0) (>= (- ?O ?N) ?F)) (and (and (and (= ?L ?G) (= ?M ?H)) (= ?N ?I)) (= ?O ?J)))) (main_sr2 ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (main_sservice_reqdispatch ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (>= ?N 0) (and (and (and (and (= ?K ?F) (= ?L ?G)) (= ?M ?H)) (= ?N ?I)) (= ?O ?J)))) (main_sr1 ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(not (exists((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(and (main_sservice_reqdispatch ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J)(and (<= ?I (- 1)) (and (and (and (and (= ?F ?K) (= ?G ?L)) (= ?H ?M)) (= ?I ?N)) (= ?J ?O)))))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (main_serv1 ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (= ?G (+ ?L 1)) (and (and (and (= ?K ?F) (= ?M ?H)) (= ?N ?I)) (= ?O ?J)))) (main_seventloop ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (main_sserverdispatch ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (and (>= ?J 1) (= ?I 0)) (and (and (= ?K ?F) (= ?L ?G)) (= ?M ?H)))) (main_sserv1 ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (main_seventloop ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (and (>= ?L 1) (= ?G (- ?L 1))) (and (and (and (= ?K ?F) (= ?M ?H)) (= ?N ?I)) (= ?O ?J)))) (main_sservice_reqdispatch ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (main_seventloop ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (and (>= ?M 1) (= ?H (- ?M 1))) (and (and (and (= ?K ?F) (= ?L ?G)) (= ?N ?I)) (= ?O ?J)))) (main_sserverdispatch ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (main_sinit ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (= ?H (+ ?M 1)) (and (and (and (= ?K ?F) (= ?L ?G)) (= ?N ?I)) (= ?O ?J)))) (main_seventloop ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int)(?K Int)(?L Int)(?M Int)(?N Int)(?O Int))(=>(and (main_si ?A ?B ?C ?D ?E ?K ?L ?M ?N ?O)(and (and (= ?H 0) (= ?G 0)) (and (and (= ?K ?F) (= ?N ?I)) (= ?O ?J)))) (main_sinit ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(assert(forall((?A Int)(?B Int)(?C Int)(?D Int)(?E Int)(?F Int)(?G Int)(?H Int)(?I Int)(?J Int))(=>(and (and (and (and (= ?A ?F) (= ?B ?G)) (= ?C ?H)) (= ?D ?I)) (= ?E ?J)) (main_si ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J))))
(check-sat)
