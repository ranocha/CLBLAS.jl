
for func in [:clblasSnrm2, :clblasDnrm2, :clblasScnrm2, :clblasDznrm2]
    @eval @blasfun $func(N::Csize_t, NRM2::cl.CL_mem, offNRM2::Csize_t,
                              X::cl.CL_mem, offx::Csize_t, incx::Cint,
                              scratch_buff::cl.CL_mem,
                              n_queues::cl.CL_uint,
                              queues::Ptr{cl.CL_command_queue},
                              n_events_in_wait_list::cl.CL_uint,
                              event_wait_list::Ptr{cl.CL_event},
                              events::Ptr{cl.CL_event})
    @eval @blasfun2 $func(N::Csize_t, NRM2::cl.CL_mem, offNRM2::Csize_t,
                               X::cl.CL_mem, offx::Csize_t, incx::Cint,
                               scratch_buff::cl.CL_mem)
end
