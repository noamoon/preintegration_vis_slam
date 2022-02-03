%class PreintegratedAhrsMeasurements, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PreintegratedAhrsMeasurements(Vector bias, Matrix measuredOmegaCovariance)
%PreintegratedAhrsMeasurements(PreintegratedAhrsMeasurements rhs)
%
%-------Methods-------
%biasHat() : returns Vector
%deltaRij() : returns gtsam::Rot3
%deltaTij() : returns double
%equals(PreintegratedAhrsMeasurements expected, double tol) : returns bool
%integrateMeasurement(Vector measuredOmega, double deltaT) : returns void
%print(string s) : returns void
%resetIntegration() : returns void
%
classdef PreintegratedAhrsMeasurements < handle
  properties
    ptr_gtsamPreintegratedAhrsMeasurements = 0
  end
  methods
    function obj = PreintegratedAhrsMeasurements(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3389, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double')
        my_ptr = gtsam_wrapper(3390, varargin{1}, varargin{2});
      elseif nargin == 1 && isa(varargin{1},'gtsam.PreintegratedAhrsMeasurements')
        my_ptr = gtsam_wrapper(3391, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.PreintegratedAhrsMeasurements constructor');
      end
      obj.ptr_gtsamPreintegratedAhrsMeasurements = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3392, obj.ptr_gtsamPreintegratedAhrsMeasurements);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = biasHat(this, varargin)
      % BIASHAT usage: biasHat() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3393, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedAhrsMeasurements.biasHat');
    end

    function varargout = deltaRij(this, varargin)
      % DELTARIJ usage: deltaRij() : returns gtsam.Rot3
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3394, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedAhrsMeasurements.deltaRij');
    end

    function varargout = deltaTij(this, varargin)
      % DELTATIJ usage: deltaTij() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3395, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedAhrsMeasurements.deltaTij');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(PreintegratedAhrsMeasurements expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.PreintegratedAhrsMeasurements') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(3396, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedAhrsMeasurements.equals');
    end

    function varargout = integrateMeasurement(this, varargin)
      % INTEGRATEMEASUREMENT usage: integrateMeasurement(Vector measuredOmega, double deltaT) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double')
        gtsam_wrapper(3397, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedAhrsMeasurements.integrateMeasurement');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(3398, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3399, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedAhrsMeasurements.print');
    end

    function varargout = resetIntegration(this, varargin)
      % RESETINTEGRATION usage: resetIntegration() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3400, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PreintegratedAhrsMeasurements.resetIntegration');
    end

  end

  methods(Static = true)
  end
end
