// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.1
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#define AP_INT_MAX_W 32678

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "ap_stream.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;


// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->
    typedef struct  {
        short data;
        ap_fixed<1, 0, (ap_q_mode) 5, (ap_o_mode)3, 0> done;
       } outData_s;



// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "agg_result_data"
#define AUTOTB_TVOUT_agg_result_data  "../tv/cdatafile/c.selectionSort.autotvout_agg_result_data.dat"
// wrapc file define: "agg_result_done_V"
#define AUTOTB_TVOUT_agg_result_done_V  "../tv/cdatafile/c.selectionSort.autotvout_agg_result_done_V.dat"
// wrapc file define: "dataIn"
#define AUTOTB_TVIN_dataIn  "../tv/cdatafile/c.selectionSort.autotvin_dataIn.dat"
// wrapc file define: "posOutData"
#define AUTOTB_TVIN_posOutData  "../tv/cdatafile/c.selectionSort.autotvin_posOutData.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "agg_result_data"
#define AUTOTB_TVOUT_PC_agg_result_data  "../tv/rtldatafile/rtl.selectionSort.autotvout_agg_result_data.dat"
// tvout file define: "agg_result_done_V"
#define AUTOTB_TVOUT_PC_agg_result_done_V  "../tv/rtldatafile/rtl.selectionSort.autotvout_agg_result_done_V.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			agg_result_data_depth = 0;
			agg_result_done_V_depth = 0;
			dataIn_depth = 0;
			posOutData_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{agg_result_data " << agg_result_data_depth << "}\n";
			total_list << "{agg_result_done_V " << agg_result_done_V_depth << "}\n";
			total_list << "{dataIn " << dataIn_depth << "}\n";
			total_list << "{posOutData " << posOutData_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int agg_result_data_depth;
		int agg_result_done_V_depth;
		int dataIn_depth;
		int posOutData_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};


#define selectionSort AESL_ORIG_DUT_selectionSort
extern outData_s selectionSort (
short dataIn,
char posOutData);
#undef selectionSort

outData_s selectionSort (
short dataIn,
char posOutData)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;

		outData_s AESL_return;

		// output port post check: "agg_result_data"
		aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_data, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_data, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_data, AESL_token); // data

			sc_bv<16> *agg_result_data_pc_buffer = new sc_bv<16>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'agg_result_data', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'agg_result_data', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					agg_result_data_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_data, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_agg_result_data))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: agg_result_data
				{
					// bitslice(15, 0)
					// {
						// celement: agg.result.data(15, 0)
						// {
							sc_lv<16>* agg_result_data_lv0_0_0_1 = new sc_lv<16>[1];
						// }
					// }

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: agg.result.data(15, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(AESL_return.data) != NULL) // check the null address if the c port is array or others
								{
									agg_result_data_lv0_0_0_1[hls_map_index++].range(15, 0) = sc_bv<16>(agg_result_data_pc_buffer[hls_map_index].range(15, 0));
								}
							}
						}
					}

					// bitslice(15, 0)
					{
						int hls_map_index = 0;
						// celement: agg.result.data(15, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : AESL_return.data
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : AESL_return.data
								// output_left_conversion : AESL_return.data
								// output_type_conversion : (agg_result_data_lv0_0_0_1[hls_map_index++]).to_uint64()
								if (&(AESL_return.data) != NULL) // check the null address if the c port is array or others
								{
									AESL_return.data = (agg_result_data_lv0_0_0_1[hls_map_index++]).to_uint64();
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] agg_result_data_pc_buffer;
		}

		// output port post check: "agg_result_done_V"
		aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_done_V, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_done_V, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_done_V, AESL_token); // data

			sc_bv<1> *agg_result_done_V_pc_buffer = new sc_bv<1>[1];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'agg_result_done_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'agg_result_done_V', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					agg_result_done_V_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_agg_result_done_V, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_agg_result_done_V))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: agg_result_done_V
				{
					// bitslice(0, 0)
					// {
						// celement: agg.result.done.V(0, 0)
						// {
							sc_lv<1>* agg_result_done_V_lv0_0_0_1 = new sc_lv<1>[1];
						// }
					// }

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: agg.result.done.V(0, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								if (&(AESL_return.done) != NULL) // check the null address if the c port is array or others
								{
									agg_result_done_V_lv0_0_0_1[hls_map_index++].range(0, 0) = sc_bv<1>(agg_result_done_V_pc_buffer[hls_map_index].range(0, 0));
								}
							}
						}
					}

					// bitslice(0, 0)
					{
						int hls_map_index = 0;
						// celement: agg.result.done.V(0, 0)
						{
							// carray: (0) => (0) @ (1)
							for (int i_0 = 0; i_0 <= 0; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : AESL_return.done
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : AESL_return.done
								// output_left_conversion : (AESL_return.done).range()
								// output_type_conversion : (agg_result_done_V_lv0_0_0_1[hls_map_index++]).to_string(SC_BIN).c_str()
								if (&(AESL_return.done) != NULL) // check the null address if the c port is array or others
								{
									(AESL_return.done).range() = (agg_result_done_V_lv0_0_0_1[hls_map_index++]).to_string(SC_BIN).c_str();
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] agg_result_done_V_pc_buffer;
		}

		AESL_transaction_pc++;

		return AESL_return;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "agg_result_data"
		char* tvout_agg_result_data = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_agg_result_data);

		// "agg_result_done_V"
		char* tvout_agg_result_done_V = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_agg_result_done_V);

		// "dataIn"
		char* tvin_dataIn = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_dataIn);

		// "posOutData"
		char* tvin_posOutData = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_posOutData);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_dataIn, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_dataIn, tvin_dataIn);

		sc_bv<16> dataIn_tvin_wrapc_buffer;

		// RTL Name: dataIn
		{
			// bitslice(15, 0)
			{
				// celement: dataIn(15, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : dataIn
						// sub_1st_elem          : 
						// ori_name_1st_elem     : dataIn
						// regulate_c_name       : dataIn
						// input_type_conversion : dataIn
						if (&(dataIn) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> dataIn_tmp_mem;
							dataIn_tmp_mem = dataIn;
							dataIn_tvin_wrapc_buffer.range(15, 0) = dataIn_tmp_mem.range(15, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_dataIn, "%s\n", (dataIn_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_dataIn, tvin_dataIn);
		}

		tcl_file.set_num(1, &tcl_file.dataIn_depth);
		sprintf(tvin_dataIn, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_dataIn, tvin_dataIn);

		// [[transaction]]
		sprintf(tvin_posOutData, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_posOutData, tvin_posOutData);

		sc_bv<8> posOutData_tvin_wrapc_buffer;

		// RTL Name: posOutData
		{
			// bitslice(7, 0)
			{
				// celement: posOutData(7, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : posOutData
						// sub_1st_elem          : 
						// ori_name_1st_elem     : posOutData
						// regulate_c_name       : posOutData
						// input_type_conversion : posOutData
						if (&(posOutData) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> posOutData_tmp_mem;
							posOutData_tmp_mem = posOutData;
							posOutData_tvin_wrapc_buffer.range(7, 0) = posOutData_tmp_mem.range(7, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_posOutData, "%s\n", (posOutData_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_posOutData, tvin_posOutData);
		}

		tcl_file.set_num(1, &tcl_file.posOutData_depth);
		sprintf(tvin_posOutData, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_posOutData, tvin_posOutData);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		outData_s AESL_return = AESL_ORIG_DUT_selectionSort(dataIn, posOutData);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_agg_result_data, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_agg_result_data, tvout_agg_result_data);

		sc_bv<16>* agg_result_data_tvout_wrapc_buffer = new sc_bv<16>[1];

		// RTL Name: agg_result_data
		{
			// bitslice(15, 0)
			{
				int hls_map_index = 0;
				// celement: agg.result.data(15, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : AESL_return.data
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : AESL_return.data
						// regulate_c_name       : agg_result_data
						// input_type_conversion : AESL_return.data
						if (&(AESL_return.data) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<16> agg_result_data_tmp_mem;
							agg_result_data_tmp_mem = AESL_return.data;
							agg_result_data_tvout_wrapc_buffer[hls_map_index++].range(15, 0) = agg_result_data_tmp_mem.range(15, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_agg_result_data, "%s\n", (agg_result_data_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_agg_result_data, tvout_agg_result_data);
		}

		tcl_file.set_num(1, &tcl_file.agg_result_data_depth);
		sprintf(tvout_agg_result_data, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_agg_result_data, tvout_agg_result_data);

		// release memory allocation
		delete [] agg_result_data_tvout_wrapc_buffer;

		// [[transaction]]
		sprintf(tvout_agg_result_done_V, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_agg_result_done_V, tvout_agg_result_done_V);

		sc_bv<1>* agg_result_done_V_tvout_wrapc_buffer = new sc_bv<1>[1];

		// RTL Name: agg_result_done_V
		{
			// bitslice(0, 0)
			{
				int hls_map_index = 0;
				// celement: agg.result.done.V(0, 0)
				{
					// carray: (0) => (0) @ (1)
					for (int i_0 = 0; i_0 <= 0; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : AESL_return.done
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : AESL_return.done
						// regulate_c_name       : agg_result_done_V
						// input_type_conversion : (AESL_return.done).range().to_string(SC_BIN).c_str()
						if (&(AESL_return.done) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<1> agg_result_done_V_tmp_mem;
							agg_result_done_V_tmp_mem = (AESL_return.done).range().to_string(SC_BIN).c_str();
							agg_result_done_V_tvout_wrapc_buffer[hls_map_index++].range(0, 0) = agg_result_done_V_tmp_mem.range(0, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvout_agg_result_done_V, "%s\n", (agg_result_done_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_agg_result_done_V, tvout_agg_result_done_V);
		}

		tcl_file.set_num(1, &tcl_file.agg_result_done_V_depth);
		sprintf(tvout_agg_result_done_V, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_agg_result_done_V, tvout_agg_result_done_V);

		// release memory allocation
		delete [] agg_result_done_V_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "agg_result_data"
		delete [] tvout_agg_result_data;
		// release memory allocation: "agg_result_done_V"
		delete [] tvout_agg_result_done_V;
		// release memory allocation: "dataIn"
		delete [] tvin_dataIn;
		// release memory allocation: "posOutData"
		delete [] tvin_posOutData;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

		return AESL_return;
	}
}
