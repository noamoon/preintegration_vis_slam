%class CombinedImuFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%CombinedImuFactor(size_t pose_i, size_t vel_i, size_t pose_j, size_t vel_j, size_t bias_i, size_t bias_j, PreintegratedCombinedMeasurements CombinedPreintegratedMeasurements)
%
%-------Methods-------
%evaluateError(Pose3 pose_i, Vector vel_i, Pose3 pose_j, Vector vel_j, ConstantBias bias_i, ConstantBias bias_j) : returns Vector
%preintegratedMeasurements() : returns gtsam::PreintegratedCombinedMeasurements
%
classdef CombinedImuFactor < gtsam.NonlinearFactor
  properties
    ptr_gtsamCombinedImuFactor = 0
  end
  methods
    function obj = CombinedImuFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3384, varargin{2});
        end
        base_ptr = gtsam_wrapper(3383, my_ptr);
      elseif nargin == 7 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'numeric') && isa(varargin{6},'numeric') && isa(varargin{7},'gtsam.PreintegratedCombinedMeasurements')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3385, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7});
      else
        error('Arguments do not match any overload of gtsam.CombinedImuFactor constructor');
      end
      obj = obj@gtsam.NonlinearFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamCombinedImuFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3386, obj.ptr_gtsamCombinedImuFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(Pose3 pose_i, Vector vel_i, Pose3 pose_j, Vector vel_j, ConstantBias bias_i, ConstantBias bias_j) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 6 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'gtsam.Pose3') && isa(varargin{4},'double') && size(varargin{4},2)==1 && isa(varargin{5},'gtsam.imuBias.ConstantBias') && isa(varargin{6},'gtsam.imuBias.ConstantBias')
        varargout{1} = gtsam_wrapper(3387, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.CombinedImuFactor.evaluateError');
    end

    function varargout = preintegratedMeasurements(this, varargin)
      % PREINTEGRATEDMEASUREMENTS usage: preintegratedMeasurements() : returns gtsam.PreintegratedCombinedMeasurements
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3388, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.CombinedImuFactor.preintegratedMeasurements');
    end

  end

  methods(Static = true)
  end
end
