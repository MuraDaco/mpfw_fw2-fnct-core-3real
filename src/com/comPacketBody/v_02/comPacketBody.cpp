//  *******************************************************************************
//  
//  mpfw / fw2 - Multi Platform FirmWare FrameWork 
//      library that contains the essential code that is used in every application
//  Copyright (C) (2023) Marco Dau
//  
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Affero General Public License as published
//  by the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//  
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Affero General Public License for more details.
//  
//  You should have received a copy of the GNU Affero General Public License
//  along with this program.  If not, see <https://www.gnu.org/licenses/>.
//  
//  You can contact me by the following email address
//  marco <d o t> ing <d o t> dau <a t> gmail <d o t> com
//  
//  *******************************************************************************
/*
 * comPacketBody.cpp
 *
 *  Created on: March, 25th 2026 (Wed)
 *      Author: Marco Dau
 */

#include "comPacketBody.h"


namespace fw2 { namespace fnct { namespace core	{


bool     comPacketBody_t::g_Master = false;
uint8_t  comPacketBody_t::g_adds = UY_PROTOCOL2__ADDS;

uint8_t comPacketBody_t::AddsGet (void)	{
	uint8_t l_result = UY_PROTOCOL2__ADDS;
	if(0 != g_adds)	l_result = g_adds;
	return l_result;
}

void comPacketBody_t::AddsSet (uint8_t p_adds)	{
	if(
		('1' <= g_adds) &&
		('9' >= g_adds)
	) {
		g_adds = p_adds;
	}
}

uint8_t comPacketBody_t::AddsSrcGet (char* p_buffer)	{
    return p_buffer[UY_PROTOCOL2__ID_SRC_ADDS];
}

void comPacketBody_t::AddsSrcSet (char* p_buffer, uint8_t p_adds)	{
	p_buffer[UY_PROTOCOL2__ID_SRC_ADDS] = p_adds;
}

bool	comPacketBody_t::AddsDstMatch    (char* p_buffer)	{
	return (g_adds == p_buffer[UY_PROTOCOL2__ID_DST_ADDS]);
}

uint8_t comPacketBody_t::AddsDstGet (char* p_buffer)	{
	return p_buffer[UY_PROTOCOL2__ID_DST_ADDS];
}

void comPacketBody_t::AddsDstSet (char* p_buffer, uint8_t p_adds)	{
	p_buffer[UY_PROTOCOL2__ID_DST_ADDS] = p_adds;
}

uint8_t comPacketBody_t::CommandGet (char* p_buffer)	{
	return p_buffer[UY_PROTOCOL2__ID_CMD_CODE];
}

void comPacketBody_t::CommandSet (char* p_buffer, uint8_t p_cmd)	{
	p_buffer[UY_PROTOCOL2__ID_CMD_CODE] = p_cmd;
}

uint8_t  comPacketBody_t::CommandGetData  (char* p_buffer)	{
	return p_buffer[UY_PROTOCOL2__ID_CMD_DATA_START];
}


void comPacketBody_t::Set_Master  (void)	{
	g_Master = true;
}

void comPacketBody_t::Set_Slave   (void)	{
	g_Master = false;
}

bool comPacketBody_t::AmI_Master  (void)	{
	return 	g_Master;
}

bool comPacketBody_t::AmI_Slave   (void)	{
	return 	!g_Master;
}





} } }   // fw2::fnct::core
