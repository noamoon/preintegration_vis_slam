%class SubgraphSolverParameters, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SubgraphSolverParameters()
%
classdef SubgraphSolverParameters < gtsam.ConjugateGradientParameters
  properties
    ptr_gtsamSubgraphSolverParameters = 0
  end
  methods
    function obj = SubgraphSolverParameters(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1533, varargin{2});
        end
        base_ptr = gtsam_wrapper(1532, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(1534);
      else
        error('Arguments do not match any overload of gtsam.SubgraphSolverParameters constructor');
      end
      obj = obj@gtsam.ConjugateGradientParameters(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamSubgraphSolverParameters = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1535, obj.ptr_gtsamSubgraphSolverParameters);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
