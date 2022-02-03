%class ScenarioRunner, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ScenarioRunner(Scenario scenario, PreintegrationParams p, double imuSampleTime, ConstantBias bias)
%
%-------Methods-------
%actualAngularVelocity(double t) : returns Vector
%actualSpecificForce(double t) : returns Vector
%estimateCovariance(double T, size_t N, ConstantBias estimatedBias) : returns Matrix
%estimateNoiseCovariance(size_t N) : returns Matrix
%gravity_n() : returns Vector
%imuSampleTime() : returns double
%integrate(double T, ConstantBias estimatedBias, bool corrupted) : returns gtsam::PreintegratedImuMeasurements
%measuredAngularVelocity(double t) : returns Vector
%measuredSpecificForce(double t) : returns Vector
%predict(PreintegratedImuMeasurements pim, ConstantBias estimatedBias) : returns gtsam::NavState
%
classdef ScenarioRunner < handle
  properties
    ptr_gtsamScenarioRunner = 0
  end
  methods
    function obj = ScenarioRunner(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3471, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'gtsam.Scenario') && isa(varargin{2},'gtsam.PreintegrationParams') && isa(varargin{3},'double') && isa(varargin{4},'gtsam.imuBias.ConstantBias')
        my_ptr = gtsam_wrapper(3472, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.ScenarioRunner constructor');
      end
      obj.ptr_gtsamScenarioRunner = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3473, obj.ptr_gtsamScenarioRunner);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = actualAngularVelocity(this, varargin)
      % ACTUALANGULARVELOCITY usage: actualAngularVelocity(double t) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3474, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ScenarioRunner.actualAngularVelocity');
    end

    function varargout = actualSpecificForce(this, varargin)
      % ACTUALSPECIFICFORCE usage: actualSpecificForce(double t) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3475, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ScenarioRunner.actualSpecificForce');
    end

    function varargout = estimateCovariance(this, varargin)
      % ESTIMATECOVARIANCE usage: estimateCovariance(double T, size_t N, ConstantBias estimatedBias) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.imuBias.ConstantBias')
        varargout{1} = gtsam_wrapper(3476, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ScenarioRunner.estimateCovariance');
    end

    function varargout = estimateNoiseCovariance(this, varargin)
      % ESTIMATENOISECOVARIANCE usage: estimateNoiseCovariance(size_t N) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(3477, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ScenarioRunner.estimateNoiseCovariance');
    end

    function varargout = gravity_n(this, varargin)
      % GRAVITY_N usage: gravity_n() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3478, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ScenarioRunner.gravity_n');
    end

    function varargout = imuSampleTime(this, varargin)
      % IMUSAMPLETIME usage: imuSampleTime() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3479, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ScenarioRunner.imuSampleTime');
    end

    function varargout = integrate(this, varargin)
      % INTEGRATE usage: integrate(double T, ConstantBias estimatedBias, bool corrupted) : returns gtsam.PreintegratedImuMeasurements
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && isa(varargin{2},'gtsam.imuBias.ConstantBias') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(3480, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ScenarioRunner.integrate');
    end

    function varargout = measuredAngularVelocity(this, varargin)
      % MEASUREDANGULARVELOCITY usage: measuredAngularVelocity(double t) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3481, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ScenarioRunner.measuredAngularVelocity');
    end

    function varargout = measuredSpecificForce(this, varargin)
      % MEASUREDSPECIFICFORCE usage: measuredSpecificForce(double t) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(3482, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ScenarioRunner.measuredSpecificForce');
    end

    function varargout = predict(this, varargin)
      % PREDICT usage: predict(PreintegratedImuMeasurements pim, ConstantBias estimatedBias) : returns gtsam.NavState
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.PreintegratedImuMeasurements') && isa(varargin{2},'gtsam.imuBias.ConstantBias')
        varargout{1} = gtsam_wrapper(3483, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ScenarioRunner.predict');
    end

  end

  methods(Static = true)
  end
end
