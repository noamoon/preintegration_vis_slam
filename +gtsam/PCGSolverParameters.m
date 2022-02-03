%class PCGSolverParameters, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%PCGSolverParameters()
%
%-------Methods-------
%print(string s) : returns void
%setPreconditionerParams(PreconditionerParameters preconditioner) : returns void
%
classdef PCGSolverParameters < gtsam.ConjugateGradientParameters
  properties
    ptr_gtsamPCGSolverParameters = 0
  end
  methods
    function obj = PCGSolverParameters(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1526, varargin{2});
        end
        base_ptr = gtsam_wrapper(1525, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(1527);
      else
        error('Arguments do not match any overload of gtsam.PCGSolverParameters constructor');
      end
      obj = obj@gtsam.ConjugateGradientParameters(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamPCGSolverParameters = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1528, obj.ptr_gtsamPCGSolverParameters);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1529, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1530, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PCGSolverParameters.print');
    end

    function varargout = setPreconditionerParams(this, varargin)
      % SETPRECONDITIONERPARAMS usage: setPreconditionerParams(PreconditionerParameters preconditioner) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.PreconditionerParameters')
        gtsam_wrapper(1531, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.PCGSolverParameters.setPreconditionerParams');
    end

  end

  methods(Static = true)
  end
end
