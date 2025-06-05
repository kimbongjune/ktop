package net.ktop.ktop.module.web.workforce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.workforce.WorkerDto;
import net.ktop.ktop.module.web.workforce.WorkerRepository;
import net.ktop.ktop.module.web.workforce.WorkerService;

@Service
public class WorkerServiceImpl implements WorkerService {
	
	private final WorkerRepository workerRepository;
	
	@Autowired
	public WorkerServiceImpl(WorkerRepository workerRepository) {
		this.workerRepository = workerRepository;
	}

	@Override
	public WorkerDto getWorkerList(WorkerDto dto) {
		return workerRepository.getWorkerList(dto);
	}

}
