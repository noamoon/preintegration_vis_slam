%class NonlinearEquality2Rot2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%NonlinearEquality2Rot2(Key key1, Key key2, double mu)
%
%-------Methods-------
%evaluateError(Rot2 x1, Rot2 x2) : returns Vector
%
classdef NonlinearEquality2Rot2 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamNonlinearEquality2Rot2 = 0
  end
  methods
    function obj = NonlinearEquality2Rot2(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2391, varargin{2});
        end
        base_ptr = gtsam_wrapper(2390, my_ptr);
      elseif nargin == 3 && isa(varargin{1},'Key') && isa(varargin{2},'Key') && isa(varargin{3},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2392, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 2 && isa(varargin{1},'Key') && isa(varargin{2},'Key')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2393, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.NonlinearEquality2Rot2 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamNonlinearEquality2Rot2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2394, obj.ptr_gtsamNonlinearEquality2Rot2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(Rot2 x1, Rot2 x2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Rot2') && isa(varargin{2},'gtsam.Rot2')
        varargout{1} = gtsam_wrapper(2395, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearEquality2Rot2.evaluateError');
    end

  end

  methods(Static = true)
  end
end
