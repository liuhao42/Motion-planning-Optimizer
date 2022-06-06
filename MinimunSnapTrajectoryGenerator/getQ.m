function Q = getQ(n_seg, n_order, ts)
    Q = [];
    for k = 1:n_seg
        Q_k = [];
        T = ts(k);
        %#####################################################
        % STEP 1.1: calculate Q_k of the k-th segment 
        Q_k = [100800*T^7, 50400*T^6, 20160*T^5, 5040*T^4, 0, 0, 0, 0
                50400*T^6, 25920*T^5, 10800*T^4, 2880*T^3, 0, 0, 0, 0
                20160*T^5, 10800*T^4,  4800*T^3, 1440*T^2, 0, 0, 0, 0
                 5040*T^4,  2880*T^3,  1440*T^2,  576*T^1, 0, 0, 0, 0
                        0,         0,         0,        0, 0, 0, 0, 0
                        0,         0,         0,        0, 0, 0, 0, 0
                        0,         0,         0,        0, 0, 0, 0, 0
                        0,         0,         0,        0, 0, 0, 0, 0];
                    
        Q = blkdiag(Q, Q_k);
    end
end