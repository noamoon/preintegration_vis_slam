%class EssentialMatrixConstraint, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%EssentialMatrixConstraint(size_t key1, size_t key2, EssentialMatrix measuredE, Base model)
%
%-------Methods-------
%equals(EssentialMatrixConstraint other, double tol) : returns bool
%evaluateError(Pose3 p1, Pose3 p2) : returns Vector
%measured() : returns gtsam::EssentialMatrix
%print(string s, KeyFormatter keyFormatter) : returns void
%
classdef EssentialMatrixConstraint < gtsam.NoiseModelFactor
  properties
    ptr_gtsamEssentialMatrixConstraint = 0
  end
  methods
    function obj = EssentialMatrixConstraint(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(2869, varargin{2});
        end
        base_ptr = gtsam_wrapper(2868, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric') && isa(varargin{3},'gtsam.EssentialMatrix') && isa(varargin{4},'gtsam.noiseModel.Base')
        [ my_ptr, base_ptr ] = gtsam_wrapper(2870, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.EssentialMatrixConstraint constructor');
      end
      obj = obj@gtsam.NoiseModelFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamEssentialMatrixConstraint = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2871, obj.ptr_gtsamEssentialMatrixConstraint);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = equals(this, varargin)
      % EQUALS usage: equals(EssentialMatrixConstraint other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.EssentialMatrixConstraint') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2872, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrixConstraint.equals');
    end

    function varargout = evaluateError(this, varargin)
      % EVALUATEERROR usage: evaluateError(Pose3 p1, Pose3 p2) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Pose3') && isa(varargin{2},'gtsam.Pose3')
        varargout{1} = gtsam_wrapper(2873, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrixConstraint.evaluateError');
    end

    function varargout = measured(this, varargin)
      % MEASURED usage: measured() : returns gtsam.EssentialMatrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2874, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrixConstraint.measured');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2875, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2876, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2877, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.EssentialMatrixConstraint.print');
    end

  end

  methods(Static = true)
  end
end
