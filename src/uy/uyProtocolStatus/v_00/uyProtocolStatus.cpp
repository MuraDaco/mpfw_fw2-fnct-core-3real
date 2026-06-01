

// typedef protocol_status_struct_t    {
// 
// };
// 
// int32_t uyProtocol::get_packet_length_3 (uint8_t p_rx_byte)	{
//     protocol_status_struct_t l_prtcStt;
//     // init protocol status
//     l_prtcStt.length = 0;
//     l_prtcStt.state = UTY_PROTOCOL_WAITING_HEADER;
//     l_prtcStt.end_char = UTY_PROTOCOL_DEFAULT_TERMINATING_CHAR;
//     l_prtcStt.statusErr = UTY_PROTOCOL_ERROR_NONE;
//     l_prtcStt.dataCounter = 0;
//     l_prtcStt.packet_length_001, l_prtcStt.packet_length_010, l_prtcStt.packet_length_100 = 0;
//     while(l_continue)   {
//         l_prtcStt.dataCounter++;
//         UpdProtocolStatus(p_rx_byte, &l_prtcStt)
//     }
// 
//     return l_length
// }
