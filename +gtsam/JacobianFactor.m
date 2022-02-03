%class JacobianFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%JacobianFactor()
%JacobianFactor(GaussianFactor factor)
%JacobianFactor(Vector b_in)
%JacobianFactor(size_t i1, Matrix A1, Vector b, Diagonal model)
%JacobianFactor(size_t i1, Matrix A1, size_t i2, Matrix A2, Vector b, Diagonal model)
%JacobianFactor(size_t i1, Matrix A1, size_t i2, Matrix A2, size_t i3, Matrix A3, Vector b, Diagonal model)
%JacobianFactor(GaussianFactorGraph graph)
%JacobianFactor(GaussianFactorGraph graph, VariableSlots p_variableSlots)
%JacobianFactor(GaussianFactorGraph graph, Ordering ordering)
%JacobianFactor(GaussianFactorGraph graph, Ordering ordering, VariableSlots p_variableSlots)
%
%-------Methods-------
%augmentedJacobianUnweighted() : returns Matrix
%cols() : returns size_t
%eliminate(Ordering keys) : returns pair< gtsam::GaussianConditional, gtsam::JacobianFactor >
%equals(GaussianFactor lf, double tol) : returns bool
%error(VectorValues c) : returns double
%error_vector(VectorValues c) : returns Vector
%getA() : returns Matrix
%get_model() : returns gtsam::noiseModel::Diagonal
%getb() : returns Vector
%isConstrained() : returns bool
%jacobianUnweighted() : returns pair< Matrix, Vector >
%keys() : returns gtsam::KeyVector
%print(string s, KeyFormatter keyFormatter) : returns void
%printKeys(string s) : returns void
%rows() : returns size_t
%setModel(bool anyConstrained, Vector sigmas) : returns void
%size() : returns size_t
%transposeMultiplyAdd(double alpha, Vector e, VectorValues x) : returns void
%unweighted_error(VectorValues c) : returns Vector
%whiten() : returns gtsam::JacobianFactor
%
classdef JacobianFactor < gtsam.GaussianFactor
  properties
    ptr_gtsamJacobianFactor = 0
  end
  methods
    function obj = JacobianFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1282, varargin{2});
        end
        base_ptr = gtsam_wrapper(1281, my_ptr);
      elseif nargin == 0
        [ my_ptr, base_ptr ] = gtsam_wrapper(1283);
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussianFactor')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1284, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        [ my_ptr, base_ptr ] = gtsam_wrapper(1285, varargin{1});
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'double') && size(varargin{3},2)==1 && isa(varargin{4},'gtsam.noiseModel.Diagonal')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1286, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      elseif nargin == 6 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'numeric') && isa(varargin{4},'double') && isa(varargin{5},'double') && size(varargin{5},2)==1 && isa(varargin{6},'gtsam.noiseModel.Diagonal')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1287, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6});
      elseif nargin == 8 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'numeric') && isa(varargin{4},'double') && isa(varargin{5},'numeric') && isa(varargin{6},'double') && isa(varargin{7},'double') && size(varargin{7},2)==1 && isa(varargin{8},'gtsam.noiseModel.Diagonal')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1288, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{7}, varargin{8});
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussianFactorGraph')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1289, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'gtsam.GaussianFactorGraph') && isa(varargin{2},'gtsam.VariableSlots')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1290, varargin{1}, varargin{2});
      elseif nargin == 2 && isa(varargin{1},'gtsam.GaussianFactorGraph') && isa(varargin{2},'gtsam.Ordering')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1291, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'gtsam.GaussianFactorGraph') && isa(varargin{2},'gtsam.Ordering') && isa(varargin{3},'gtsam.VariableSlots')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1292, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.JacobianFactor constructor');
      end
      obj = obj@gtsam.GaussianFactor(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamJacobianFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1293, obj.ptr_gtsamJacobianFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = augmentedJacobianUnweighted(this, varargin)
      % AUGMENTEDJACOBIANUNWEIGHTED usage: augmentedJacobianUnweighted() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1294, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.augmentedJacobianUnweighted');
    end

    function varargout = cols(this, varargin)
      % COLS usage: cols() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1295, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.cols');
    end

    function varargout = eliminate(this, varargin)
      % ELIMINATE usage: eliminate(Ordering keys) : returns pair< gtsam.GaussianConditional, gtsam.JacobianFactor >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(1296, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.eliminate');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(GaussianFactor lf, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianFactor') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1297, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.equals');
    end

    function varargout = error(this, varargin)
      % ERROR usage: error(VectorValues c) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1298, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.error');
    end

    function varargout = error_vector(this, varargin)
      % ERROR_VECTOR usage: error_vector(VectorValues c) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1299, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.error_vector');
    end

    function varargout = getA(this, varargin)
      % GETA usage: getA() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1300, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.getA');
    end

    function varargout = get_model(this, varargin)
      % GET_MODEL usage: get_model() : returns gtsam.noiseModel.Diagonal
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1301, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.get_model');
    end

    function varargout = getb(this, varargin)
      % GETB usage: getb() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1302, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.getb');
    end

    function varargout = isConstrained(this, varargin)
      % ISCONSTRAINED usage: isConstrained() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1303, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.isConstrained');
    end

    function varargout = jacobianUnweighted(this, varargin)
      % JACOBIANUNWEIGHTED usage: jacobianUnweighted() : returns pair< Matrix, Vector >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        [ varargout{1} varargout{2} ] = gtsam_wrapper(1304, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.jacobianUnweighted');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1305, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.keys');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(1306, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1307, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1308, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.print');
    end

    function varargout = printKeys(this, varargin)
      % PRINTKEYS usage: printKeys(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1309, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.printKeys');
    end

    function varargout = rows(this, varargin)
      % ROWS usage: rows() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1310, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.rows');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1311, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.JacobianFactor.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = setModel(this, varargin)
      % SETMODEL usage: setModel(bool anyConstrained, Vector sigmas) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'logical') && isa(varargin{2},'double') && size(varargin{2},2)==1
        gtsam_wrapper(1312, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.setModel');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1313, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.size');
    end

    function varargout = transposeMultiplyAdd(this, varargin)
      % TRANSPOSEMULTIPLYADD usage: transposeMultiplyAdd(double alpha, Vector e, VectorValues x) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'double') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'gtsam.VectorValues')
        gtsam_wrapper(1314, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.transposeMultiplyAdd');
    end

    function varargout = unweighted_error(this, varargin)
      % UNWEIGHTED_ERROR usage: unweighted_error(VectorValues c) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1315, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.unweighted_error');
    end

    function varargout = whiten(this, varargin)
      % WHITEN usage: whiten() : returns gtsam.JacobianFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1316, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JacobianFactor.whiten');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.JacobianFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1317, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.JacobianFactor.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.JacobianFactor.string_deserialize(sobj);
    end
  end
end
