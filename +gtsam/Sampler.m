%class Sampler, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Sampler(Diagonal model, int seed)
%Sampler(Vector sigmas, int seed)
%
%-------Methods-------
%dim() : returns size_t
%model() : returns gtsam::noiseModel::Diagonal
%sample() : returns Vector
%sigmas() : returns Vector
%
classdef Sampler < handle
  properties
    ptr_gtsamSampler = 0
  end
  methods
    function obj = Sampler(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1227, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'gtsam.noiseModel.Diagonal') && isa(varargin{2},'numeric')
        my_ptr = gtsam_wrapper(1228, varargin{1}, varargin{2});
      elseif nargin == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'numeric')
        my_ptr = gtsam_wrapper(1229, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.Sampler constructor');
      end
      obj.ptr_gtsamSampler = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1230, obj.ptr_gtsamSampler);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1231, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Sampler.dim');
    end

    function varargout = model(this, varargin)
      % MODEL usage: model() : returns gtsam.noiseModel.Diagonal
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1232, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Sampler.model');
    end

    function varargout = sample(this, varargin)
      % SAMPLE usage: sample() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1233, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Sampler.sample');
    end

    function varargout = sigmas(this, varargin)
      % SIGMAS usage: sigmas() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1234, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Sampler.sigmas');
    end

  end

  methods(Static = true)
  end
end
