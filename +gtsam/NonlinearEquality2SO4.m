%class NonlinearEquality2SO4, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearEquality2SO4(Key key1, Key key2, double mu)
%
%-------Methods-------
%evaluateError(SO4 x1, SO4 x2) : returns Vector
%
classdef NonlinearEquality2SO4 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamNonlinearEquality2SO4 = 0
  end
  methods
    function obj = NonlinearEquality2SO4(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2403, varargin{2});
        end
        base_ptr = gtsam_wrapper(2402, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'Key') && isa(varargin{2},'Key') && isa(varargin{3},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2404, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 2 && isa(varargin{1},'Key') && isa(varargin{2},'Key')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2405, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.NonlinearEquality2SO4 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamNonlinearEquality2SO4 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2406, obj.ptr_gtsamNonlinearEquality2SO4);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(SO4 x1, SO4 x2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SO4') && isa(varargin{2},'gtsam.SO4')
        varargout{1} = gtsam_wrapper(2407, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearEquality2SO4.evaluateError');
    end

  end

  methods(Static = true)
  end
end
