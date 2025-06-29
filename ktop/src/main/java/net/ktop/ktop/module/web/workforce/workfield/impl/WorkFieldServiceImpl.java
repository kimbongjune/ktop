package net.ktop.ktop.module.web.workforce.workfield.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.ktop.ktop.module.web.workforce.workfield.WorkFieldDto;
import net.ktop.ktop.module.web.workforce.workfield.WorkFieldRepository;
import net.ktop.ktop.module.web.workforce.workfield.WorkFieldService;

@Service
public class WorkFieldServiceImpl implements WorkFieldService {
	
	private final WorkFieldRepository repository;
	
	@Autowired
	public WorkFieldServiceImpl(WorkFieldRepository repository) {
		this.repository = repository;
	}

	@Override
	public int addWorkField(WorkFieldDto dto) {
		return repository.addWorkField(dto);
	}

	@Override
	public List<WorkFieldDto> getAllWorkField() {
		return repository.getAllWorkField();
	}

	@Override
	public int deleteWorkField(int id) {
		return repository.deleteWorkField(id);
	}

	@Override
	public int updateWorkField(WorkFieldDto dto) {
		return repository.updateWorkField(dto);
	}
} 