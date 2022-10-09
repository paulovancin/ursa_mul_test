/*
 * Implementation file for ORCA-LIB library.
 * Copyright (C) 2018-2019 Anderson Domingues, <ti.andersondomingues@gmail.com>
 * This file is part of project URSA (http://https://github.com/andersondomingues/ursa).
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA. */

//basic resources
#include "orca-core.h"

//application-specific header
//#include "../../../applications/counter-test/include/counter-test.h"
// #include "../../../applications/producer-consumer/include/producer-consumer.h"
// #include "../../../extensions/orca-pubsub/include/pubsub-broker.h"
#include "../../../applications/mult_test/include/mult_test.h"


//Task mapping routine and entry-point. Please note that
//task mapping is done through software and the code below
//runs at the startup of each node. We select the tasks to
//be loaded into each node according to nodes' ID. Startup
//routines that affect all applications can be handled here.
void app_main(void)
{
    //#ifdef CPU_ID == 22
	//hfs
	//#elif CPU_ID == 32
    //

    //printf("cpu_id: %d\n", hf_cpuid());

	switch(hf_cpuid()){

		//PRODUTOR-CONSUMIDOR
		//hf_spawn(producer, 0, 0, 0, "producer-task", 2048);
		//hf_spawn(consumer, 0, 0, 0, "consumer-task", 2048);

		case 1: // << EKF
			hf_spawn(mult_test, 100, 99, 99, "mult_test-ps-task", 6* 4096);
			break;

		// case 2: // << PID
		// 	hf_spawn(dronepid, 100, 99, 99, "dronepid-ps-task",6* 4096);
		// 	break;

		// case 3: // << PID
		// 	hf_spawn(dronepid, 100, 99, 99, "dronepid-ps-task",6* 4096);
		// 	break;

		//case 3: // << CONSUMER
		//	hf_spawn(consumer, 0, 0, 0, "consumer", 2048);
		//	break;

		default: // << NONE
			break;
	}

	//spawn for all cores
	//hf_spawn(counter_test, 0, 0, 0, "counters_test", 4096);

	// 0,0,0 => allocate for best-effort

	 //allocating real-time for ~90% (9/10)
	 //10 : period
	 // 9 : capacity
	 //10 : dealine

	 //to allocate best-effort tasks, use hf_spawn(tskname, 0, 0, 0, "name", stacksize);
}
