package net.ktop.ktop.module.web.workforce;

import java.util.List;

import net.ktop.ktop.module.web.workforce.file.WorkerFileDto;
import net.ktop.ktop.module.web.workforce.workerfield.WorkerFieldDto;

public interface WorkerService {
	WorkerDto getWorkerOne(String id);
	
	int insertWorker(WorkerDto dto);
	
	int insertWorkerField(WorkerFieldDto dto);
	
	int insertWorkerFiles(List<WorkerFileDto> dto);
	
	int deleteWorkerFileOne(String id);
	
	int updateWorker(WorkerDto dto);
	
	int deleteWorkerField(String id);
	
	List<WorkerDto> selectWorkerList(WorkerDto dto);
	
	int selectWorkerCount(WorkerDto dto);
	
	WorkerDto selectWorkerOne(WorkerDto dto);
}
