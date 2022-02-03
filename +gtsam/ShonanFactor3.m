%class ShonanFactor3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ShonanFactor3(size_t key1, size_t key2, Rot3 R12, size_t p)
%ShonanFactor3(size_t key1, size_t key2, Rot3 R12, size_t p, Base model)
%
%-------Methods-------
%evaluateError(SOn Q1, SOn Q2) : returns Vector
%
classdef ShonanFactor3 < gtsam.NoiseModelFactor
  properties
    ptr_gtsamShonanFactor3 = 0
  end
  methods
    function obj = ShonanFactor3(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3119, varargin{2});
        end
        base_ptr = gtsam_wrapper(3118, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.Rot3') && isa(varargin{4},'numeric')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3120, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      elseif nargin == 5 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.Rot3') && isa(varargin{4},'numeric') && isa(varargin{5},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3121, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      else
        error('Arguments do not match any overload of gtsam.ShonanFactor3 constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamShonanFactor3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3122, obj.ptr_gtsamShonanFactor3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(SOn Q1, SOn Q2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SOn') && isa(varargin{2},'gtsam.SOn')
        varargout{1} = gtsam_wrapper(3123, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanFactor3.evaluateError');
    end

  end

  methods(Static = true)
  end
end
