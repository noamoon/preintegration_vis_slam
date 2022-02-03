%class GaussianConditional, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GaussianConditional(size_t key, Vector d, Matrix R, Diagonal sigmas)
%GaussianConditional(size_t key, Vector d, Matrix R, size_t name1, Matrix S, Diagonal sigmas)
%GaussianConditional(size_t key, Vector d, Matrix R, size_t name1, Matrix S, size_t name2, Matrix T, Diagonal sigmas)
%GaussianConditional(size_t key, Vector d, Matrix R)
%GaussianConditional(size_t key, Vector d, Matrix R, size_t name1, Matrix S)
%GaussianConditional(size_t key, Vector d, Matrix R, size_t name1, Matrix S, size_t name2, Matrix T)
%
%-------Methods-------
%R() : returns Matrix
%S() : returns Matrix
%d() : returns Vector
%equals(GaussianConditional cg, double tol) : returns bool
%print(string s, KeyFormatter keyFormatter) : returns void
%solve(VectorValues parents) : returns gtsam::VectorValues
%solveOtherRHS(VectorValues parents, VectorValues rhs) : returns gtsam::VectorValues
%solveTransposeInPlace(VectorValues gy) : returns void
%
classdef GaussianConditional < gtsam.JacobianFactor
  properties
    ptr_gtsamGaussianConditional = 0
  end
  methods
    function obj = GaussianConditional(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1402, varargin{2});
        end
        base_ptr = gtsam_wrapper(1401, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double') && isa(varargin{4},'gtsam.noiseModel.Diagonal')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1403, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      elseif nargin == 6 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double') && isa(varargin{4},'numeric') && isa(varargin{5},'double') && isa(varargin{6},'gtsam.noiseModel.Diagonal')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1404, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6});
      elseif nargin == 8 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double') && isa(varargin{4},'numeric') && isa(varargin{5},'double') && isa(varargin{6},'numeric') && isa(varargin{7},'double') && isa(varargin{8},'gtsam.noiseModel.Diagonal')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1405, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7}, varargin{8});
      elseif nargin == 3 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1406, varargin{1}, varargin{2}, varargin{3});
      elseif nargin == 5 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double') && isa(varargin{4},'numeric') && isa(varargin{5},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1407, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      elseif nargin == 7 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double') && isa(varargin{4},'numeric') && isa(varargin{5},'double') && isa(varargin{6},'numeric') && isa(varargin{7},'double')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1408, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7});
      else
        error('Arguments do not match any overload of gtsam.GaussianConditional constructor');
      end
      obj = obj@gtsam.JacobianFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGaussianConditional = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1409, obj.ptr_gtsamGaussianConditional);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = R(this, varargin)
      % R usage: R() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1410, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianConditional.R');
    end

    function varargout = S(this, varargin)
      % S usage: S() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1411, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianConditional.S');
    end

    function varargout = d(this, varargin)
      % D usage: d() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1412, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianConditional.d');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(GaussianConditional cg, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianConditional') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1413, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianConditional.equals');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(1414, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1415, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1416, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianConditional.print');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1417, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GaussianConditional.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = solve(this, varargin)
      % SOLVE usage: solve(VectorValues parents) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1418, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianConditional.solve');
    end

    function varargout = solveOtherRHS(this, varargin)
      % SOLVEOTHERRHS usage: solveOtherRHS(VectorValues parents, VectorValues rhs) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.VectorValues') && isa(varargin{2},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1419, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianConditional.solveOtherRHS');
    end

    function varargout = solveTransposeInPlace(this, varargin)
      % SOLVETRANSPOSEINPLACE usage: solveTransposeInPlace(VectorValues gy) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        gtsam_wrapper(1420, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianConditional.solveTransposeInPlace');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.GaussianConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1421, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GaussianConditional.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.GaussianConditional.string_deserialize(sobj);
    end
  end
end
