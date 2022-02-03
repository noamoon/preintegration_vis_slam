%class AHRSFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%AHRSFactor(size_t rot_i, size_t rot_j, size_t bias, PreintegratedAhrsMeasurements preintegratedMeasurements, Vector omegaCoriolis)
%AHRSFactor(size_t rot_i, size_t rot_j, size_t bias, PreintegratedAhrsMeasurements preintegratedMeasurements, Vector omegaCoriolis, Pose3 body_P_sensor)
%
%-------Methods-------
%evaluateError(Rot3 rot_i, Rot3 rot_j, Vector bias) : returns Vector
%predict(Rot3 rot_i, Vector bias, PreintegratedAhrsMeasurements preintegratedMeasurements, Vector omegaCoriolis) : returns gtsam::Rot3
%preintegratedMeasurements() : returns gtsam::PreintegratedAhrsMeasurements
%
classdef AHRSFactor < gtsam.NonlinearFactor
  properties
    ptr_gtsamAHRSFactor = 0
  end
  methods
    function obj = AHRSFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3402, varargin{2});
        end
        base_ptr = gtsam_wrapper(3401, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'numeric') && isa(varargin{4},'gtsam.PreintegratedAhrsMeasurements') && isa(varargin{5},'double') && size(varargin{5},2)==1
        [ my_ptr, base_ptr ] = gtsam_wrapper(3403, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      elseif nargin == 6 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'numeric') && isa(varargin{4},'gtsam.PreintegratedAhrsMeasurements') && isa(varargin{5},'double') && size(varargin{5},2)==1 && isa(varargin{6},'gtsam.Pose3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3404, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6});
      else
        error('Arguments do not match any overload of gtsam.AHRSFactor constructor');
      end
      obj = obj@gtsam.NonlinearFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamAHRSFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3405, obj.ptr_gtsamAHRSFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(Rot3 rot_i, Rot3 rot_j, Vector bias) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Rot3') && isa(varargin{2},'gtsam.Rot3') && isa(varargin{3},'double') && size(varargin{3},2)==1
        varargout{1} = gtsam_wrapper(3406, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.AHRSFactor.evaluateError');
    end

    function varargout = predict(this, varargin)
      % PREDICT usage: predict(Rot3 rot_i, Vector bias, PreintegratedAhrsMeasurements preintegratedMeasurements, Vector omegaCoriolis) : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'gtsam.Rot3') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'gtsam.PreintegratedAhrsMeasurements') && isa(varargin{4},'double') && size(varargin{4},2)==1
        varargout{1} = gtsam_wrapper(3407, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.AHRSFactor.predict');
    end

    function varargout = preintegratedMeasurements(this, varargin)
      % PREINTEGRATEDMEASUREMENTS usage: preintegratedMeasurements() : returns gtsam.PreintegratedAhrsMeasurements
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3408, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.AHRSFactor.preintegratedMeasurements');
    end

  end

  methods(Static = true)
  end
end
