%class ImuFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ImuFactor(size_t pose_i, size_t vel_i, size_t pose_j, size_t vel_j, size_t bias, PreintegratedImuMeasurements preintegratedMeasurements)
%
%-------Methods-------
%evaluateError(Pose3 pose_i, Vector vel_i, Pose3 pose_j, Vector vel_j, ConstantBias bias) : returns Vector
%preintegratedMeasurements() : returns gtsam::PreintegratedImuMeasurements
%
classdef ImuFactor < gtsam.NonlinearFactor
  properties
    ptr_gtsamImuFactor = 0
  end
  methods
    function obj = ImuFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3343, varargin{2});
        end
        base_ptr = gtsam_wrapper(3342, my_ptr);
      elseif nargin == 6 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'numeric') && isa(varargin{4},'numeric') && isa(varargin{5},'numeric') && isa(varargin{6},'gtsam.PreintegratedImuMeasurements')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3344, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6});
      else
        error('Arguments do not match any overload of gtsam.ImuFactor constructor');
      end
      obj = obj@gtsam.NonlinearFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamImuFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3345, obj.ptr_gtsamImuFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(Pose3 pose_i, Vector vel_i, Pose3 pose_j, Vector vel_j, ConstantBias bias) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 5 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'gtsam.Pose3') && isa(varargin{4},'double') && size(varargin{4},2)==1 && isa(varargin{5},'gtsam.imuBias.ConstantBias')
        varargout{1} = gtsam_wrapper(3346, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ImuFactor.evaluateError');
    end

    function varargout = preintegratedMeasurements(this, varargin)
      % PREINTEGRATEDMEASUREMENTS usage: preintegratedMeasurements() : returns gtsam.PreintegratedImuMeasurements
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3347, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ImuFactor.preintegratedMeasurements');
    end

  end

  methods(Static = true)
  end
end
