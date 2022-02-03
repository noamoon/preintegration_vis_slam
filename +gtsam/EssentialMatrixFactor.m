%class EssentialMatrixFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%EssentialMatrixFactor(size_t key, Point2 pA, Point2 pB, Base noiseModel)
%
%-------Methods-------
%equals(EssentialMatrixFactor other, double tol) : returns bool
%evaluateError(EssentialMatrix E) : returns Vector
%print(string s, KeyFormatter keyFormatter) : returns void
%
classdef EssentialMatrixFactor < gtsam.NoiseModelFactor
  properties
    ptr_gtsamEssentialMatrixFactor = 0
  end
  methods
    function obj = EssentialMatrixFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2860, varargin{2});
        end
        base_ptr = gtsam_wrapper(2859, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1 && isa(varargin{3},'double') && size(varargin{3},1)==2 && size(varargin{3},2)==1 && isa(varargin{4},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2861, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.EssentialMatrixFactor constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamEssentialMatrixFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2862, obj.ptr_gtsamEssentialMatrixFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = equals(this, varargin)
      % EQUALS usage: equals(EssentialMatrixFactor other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.EssentialMatrixFactor') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2863, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrixFactor.equals');
    end

    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(EssentialMatrix E) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.EssentialMatrix')
        varargout{1} = gtsam_wrapper(2864, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrixFactor.evaluateError');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2865, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2866, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2867, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrixFactor.print');
    end

  end

  methods(Static = true)
  end
end
