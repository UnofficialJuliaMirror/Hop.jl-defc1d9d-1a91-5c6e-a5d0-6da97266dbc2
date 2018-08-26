let
    HF = Hop.Floquet.cal_floquet_hamiltonian([ones(2, 2), 2*ones(2, 2)*im], 1, 2)
    @test HF[1:2, 1:2] ≈ ones(2, 2)+2*I
    @test HF[5:6, 3:4] ≈ 2*ones(2, 2)*im
    @test HF[3:4, 5:6] ≈ -2*ones(2, 2)*im
end
