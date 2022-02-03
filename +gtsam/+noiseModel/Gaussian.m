%class Gaussian, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%R() : returns Matrix
%Whiten(Matrix H) : returns Matrix
%covariance() : returns Matrix
%equals(Base expected, double tol) : returns bool
%information() : returns Matrix
%unwhiten(Vector v) : returns Vector
%whiten(Vector v) : returns Vector
%
%-------Static Methods-------
%Covariance(Matrix R, bool smart) : returns gtsam::noiseModel::Gaussian
%Information(Matrix R, bool smart) : returns gtsam::noiseModel::Gaussian
%SqrtInformation(Matrix R, bool smart) : returns gtsam::noiseModel::Gaussian
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Gaussian
%
classdef Gaussian < gtsam.noiseModel.Base
  properties
    ptr_gtsamnoiseModelGaussian = 0
  end
  methods
    function obj = Gaussian(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1100, varargin{2});
        end
        base_ptr = gtsam_wrapper(1099, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.noiseModel.Gaussian constructor');
      end
      obj = obj@gtsam.noiseModel.Base(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamnoiseModelGaussian = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1101, obj.ptr_gtsamnoiseModelGaussian);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = R(this, varargin)
      % R usage: R() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1102, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModel.Gaussian.R');
    end

    function varargout = Whiten(this, varargin)
      % WHITEN usage: Whiten(Matrix H) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1103, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModel.Gaussian.Whiten');
    end

    function varargout = covariance(this, varargin)
      % COVARIANCE usage: covariance() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1104, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModel.Gaussian.covariance');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Base expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.noiseModel.Base') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1105, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModel.Gaussian.equals');
    end

    function varargout = information(this, varargin)
      % INFORMATION usage: information() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1106, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModel.Gaussian.information');
    end

    function varargout = unwhiten(this, varargin)
      % UNWHITEN usage: unwhiten(Vector v) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1107, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModel.Gaussian.unwhiten');
    end

    function varargout = whiten(this, varargin)
      % WHITEN usage: whiten(Vector v) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(1108, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModel.Gaussian.whiten');
    end

  end

  methods(Static = true)
    function varargout = Covariance(varargin)
      % COVARIANCE usage: Covariance(Matrix R, bool smart) : returns gtsam.noiseModel.Gaussian
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && isa(varargin{2},'logical')
        varargout{1} = gtsam_wrapper(1109, varargin{:});
        return
      end

      % COVARIANCE usage: Covariance(Matrix R) : returns gtsam.noiseModel.Gaussian
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1110, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Gaussian.Covariance');
    end

    function varargout = Information(varargin)
      % INFORMATION usage: Information(Matrix R, bool smart) : returns gtsam.noiseModel.Gaussian
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && isa(varargin{2},'logical')
        varargout{1} = gtsam_wrapper(1111, varargin{:});
        return
      end

      % INFORMATION usage: Information(Matrix R) : returns gtsam.noiseModel.Gaussian
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1112, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Gaussian.Information');
    end

    function varargout = SqrtInformation(varargin)
      % SQRTINFORMATION usage: SqrtInformation(Matrix R, bool smart) : returns gtsam.noiseModel.Gaussian
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && isa(varargin{2},'logical')
        varargout{1} = gtsam_wrapper(1113, varargin{:});
        return
      end

      % SQRTINFORMATION usage: SqrtInformation(Matrix R) : returns gtsam.noiseModel.Gaussian
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(1114, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Gaussian.SqrtInformation');
    end

  end
end
