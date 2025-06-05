package net.ktop.ktop.module.web.workforce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.workforce.WorkerDto;
import net.ktop.ktop.module.web.workforce.WorkerRepository;
import net.ktop.ktop.module.web.workforce.WorkerService;
import net.ktop.ktop.module.web.workforce.file.WorkerFileDto;
import net.ktop.ktop.module.web.workforce.file.WorkerFileRepository;
import net.ktop.ktop.module.web.workforce.workerfield.WorkerFieldDto;
import net.ktop.ktop.module.web.workforce.workerfield.WorkerFieldRepository;

@Service
public class WorkerServiceImpl implements WorkerService {
	
	private final WorkerRepository workerRepository;
	private final WorkerFieldRepository workerFieldRepository;
	private final WorkerFileRepository workerFileRepository;
	
	@Autowired
	public WorkerServiceImpl(WorkerRepository workerRepository, WorkerFieldRepository workerFieldRepository, WorkerFileRepository workerFileRepository) {
		this.workerRepository = workerRepository;
		this.workerFieldRepository  = workerFieldRepository;
		this.workerFileRepository = workerFileRepository;
	}

	@Override
	public WorkerDto getWorkerOne(String id) {
		return workerRepository.getWorkerOne(id);
	}

	@Override
	public int insertWorker(WorkerDto dto) {
		return workerRepository.insertWorker(dto);
	}

	@Override
	public int insertWorkerField(WorkerFieldDto dto) {
		return workerFieldRepository.insertWorkerField(dto);
	}

	@Override
	public int insertWorkerFiles(List<WorkerFileDto> dto) {
		return workerFileRepository.insertWorkerFiles(dto);
	}

	@Override
	public int deleteWorkerFileOne(String id) {
		return workerFileRepository.deleteWorkerFileOne(id);
	}

	@Override
	public int updateWorker(WorkerDto dto) {
		return workerRepository.updateWorker(dto);
	}

	@Override
	public int deleteWorkerField(String id) {
		return workerFieldRepository.deleteWorkerField(id);
	}

}
