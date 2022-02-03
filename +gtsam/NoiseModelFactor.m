%class NoiseModelFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%equals(NoiseModelFactor other, double tol) : returns bool
%noiseModel() : returns gtsam::noiseModel::Base
%unwhitenedError(Values x) : returns Vector
%whitenedError(Values x) : returns Vector
%
classdef NoiseModelFactor < gtsam.NonlinearFactor
  properties
    ptr_gtsamNoiseModelFactor = 0
  end
  methods
    function obj = NoiseModelFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1692, varargin{2});
        end
        base_ptr = gtsam_wrapper(1691, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.NoiseModelFactor constructor');
      end
      obj = obj@gtsam.NonlinearFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamNoiseModelFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1693, obj.ptr_gtsamNoiseModelFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = equals(this, varargin)
      % EQUALS usage: equals(NoiseModelFactor other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NoiseModelFactor') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1694, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NoiseModelFactor.equals');
    end

    function varargout = noiseModel(this, varargin)
      % NOISEMODEL usage: noiseModel() : returns gtsam.noiseModel.Base
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1695, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NoiseModelFactor.noiseModel');
    end

    function varargout = unwhitenedError(this, varargin)
      % UNWHITENEDERROR usage: unwhitenedError(Values x) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(1696, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NoiseModelFactor.unwhitenedError');
    end

    function varargout = whitenedError(this, varargin)
      % WHITENEDERROR usage: whitenedError(Values x) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(1697, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NoiseModelFactor.whitenedError');
    end

  end

  methods(Static = true)
  end
end
