%class NonlinearEquality2PinholeCameraCal3Bundler, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearEquality2PinholeCameraCal3Bundler(Key key1, Key key2, double mu)
%
%-------Methods-------
%evaluateError(PinholeCamera<Cal3Bundler> x1, PinholeCamera<Cal3Bundler> x2) : returns Vector
%
classdef NonlinearEquality2PinholeCameraCal3Bundler < gtsam.NoiseModelFactor
  properties
    ptr_gtsamNonlinearEquality2PinholeCameraCal3Bundler = 0
  end
  methods
    function obj = NonlinearEquality2PinholeCameraCal3Bundler(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2451, varargin{2});
        end
        base_ptr = gtsam_wrapper(2450, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'Key') && isa(varargin{2},'Key') && isa(varargin{3},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2452, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 2 && isa(varargin{1},'Key') && isa(varargin{2},'Key')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2453, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.NonlinearEquality2PinholeCameraCal3Bundler constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamNonlinearEquality2PinholeCameraCal3Bundler = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2454, obj.ptr_gtsamNonlinearEquality2PinholeCameraCal3Bundler);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(PinholeCamera<Cal3Bundler> x1, PinholeCamera<Cal3Bundler> x2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.PinholeCameraCal3Bundler') && isa(varargin{2},'gtsam.PinholeCameraCal3Bundler')
        varargout{1} = gtsam_wrapper(2455, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearEquality2PinholeCameraCal3Bundler.evaluateError');
    end

  end

  methods(Static = true)
  end
end
