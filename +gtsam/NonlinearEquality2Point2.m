%class NonlinearEquality2Point2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearEquality2Point2(Key key1, Key key2, double mu)
%
%-------Methods-------
%evaluateError(Point2 x1, Point2 x2) : returns Vector
%
classdef NonlinearEquality2Point2 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamNonlinearEquality2Point2 = 0
  end
  methods
    function obj = NonlinearEquality2Point2(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2373, varargin{2});
        end
        base_ptr = gtsam_wrapper(2372, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'Key') && isa(varargin{2},'Key') && isa(varargin{3},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2374, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 2 && isa(varargin{1},'Key') && isa(varargin{2},'Key')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2375, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.NonlinearEquality2Point2 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamNonlinearEquality2Point2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2376, obj.ptr_gtsamNonlinearEquality2Point2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(Point2 x1, Point2 x2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        varargout{1} = gtsam_wrapper(2377, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearEquality2Point2.evaluateError');
    end

  end

  methods(Static = true)
  end
end
