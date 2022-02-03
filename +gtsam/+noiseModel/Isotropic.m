%class Isotropic, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%sigma() : returns double
%
%-------Static Methods-------
%Precision(size_t dim, double precision, bool smart) : returns gtsam::noiseModel::Isotropic
%Sigma(size_t dim, double sigma, bool smart) : returns gtsam::noiseModel::Isotropic
%Variance(size_t dim, double varianace, bool smart) : returns gtsam::noiseModel::Isotropic
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns Isotropic
%
classdef Isotropic < gtsam.noiseModel.Diagonal
  properties
    ptr_gtsamnoiseModelIsotropic = 0
  end
  methods
    function obj = Isotropic(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1141, varargin{2});
        end
        base_ptr = gtsam_wrapper(1140, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.noiseModel.Isotropic constructor');
      end
      obj = obj@gtsam.noiseModel.Diagonal(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamnoiseModelIsotropic = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1142, obj.ptr_gtsamnoiseModelIsotropic);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = sigma(this, varargin)
      % SIGMA usage: sigma() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1143, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsamnoiseModel.Isotropic.sigma');
    end

  end

  methods(Static = true)
    function varargout = Precision(varargin)
      % PRECISION usage: Precision(size_t dim, double precision, bool smart) : returns gtsam.noiseModel.Isotropic
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(1144, varargin{:});
        return
      end

      % PRECISION usage: Precision(size_t dim, double precision) : returns gtsam.noiseModel.Isotropic
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1145, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Isotropic.Precision');
    end

    function varargout = Sigma(varargin)
      % SIGMA usage: Sigma(size_t dim, double sigma, bool smart) : returns gtsam.noiseModel.Isotropic
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(1146, varargin{:});
        return
      end

      % SIGMA usage: Sigma(size_t dim, double sigma) : returns gtsam.noiseModel.Isotropic
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1147, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Isotropic.Sigma');
    end

    function varargout = Variance(varargin)
      % VARIANCE usage: Variance(size_t dim, double varianace, bool smart) : returns gtsam.noiseModel.Isotropic
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(1148, varargin{:});
        return
      end

      % VARIANCE usage: Variance(size_t dim, double varianace) : returns gtsam.noiseModel.Isotropic
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1149, varargin{:});
        return
      end

      error('Arguments do not match any overload of function Isotropic.Variance');
    end

  end
end
