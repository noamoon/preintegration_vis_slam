%class SOn, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SOn(size_t n)
%
%-------Methods-------
%between(SOn Q) : returns gtsam::SOn
%compose(SOn Q) : returns gtsam::SOn
%equals(SOn other, double tol) : returns bool
%inverse() : returns gtsam::SOn
%localCoordinates(SOn Q) : returns Vector
%matrix() : returns Matrix
%print(string s) : returns void
%retract(Vector v) : returns gtsam::SOn
%vec() : returns Vector
%
%-------Static Methods-------
%Expmap(Vector v) : returns gtsam::SOn
%FromMatrix(Matrix R) : returns gtsam::SOn
%Lift(size_t n, Matrix R) : returns gtsam::SOn
%identity() : returns gtsam::SOn
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns SOn
%
classdef SOn < handle
  properties
    ptr_gtsamSOn = 0
  end
  methods
    function obj = SOn(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(536, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'numeric')
        my_ptr = gtsam_wrapper(537, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.SOn constructor');
      end
      obj.ptr_gtsamSOn = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(538, obj.ptr_gtsamSOn);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = between(this, varargin)
      % BETWEEN usage: between(SOn Q) : returns gtsam.SOn
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SOn')
        varargout{1} = gtsam_wrapper(539, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SOn.between');
    end

    function varargout = compose(this, varargin)
      % COMPOSE usage: compose(SOn Q) : returns gtsam.SOn
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SOn')
        varargout{1} = gtsam_wrapper(540, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SOn.compose');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(SOn other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SOn') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(541, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SOn.equals');
    end

    function varargout = inverse(this, varargin)
      % INVERSE usage: inverse() : returns gtsam.SOn
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(542, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SOn.inverse');
    end

    function varargout = localCoordinates(this, varargin)
      % LOCALCOORDINATES usage: localCoordinates(SOn Q) : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SOn')
        varargout{1} = gtsam_wrapper(543, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SOn.localCoordinates');
    end

    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(544, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SOn.matrix');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(545, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(546, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SOn.print');
    end

    function varargout = retract(this, varargin)
      % RETRACT usage: retract(Vector v) : returns gtsam.SOn
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(547, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SOn.retract');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(548, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.SOn.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = vec(this, varargin)
      % VEC usage: vec() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(549, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SOn.vec');
    end

  end

  methods(Static = true)
    function varargout = Expmap(varargin)
      % EXPMAP usage: Expmap(Vector v) : returns gtsam.SOn
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        varargout{1} = gtsam_wrapper(550, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SOn.Expmap');
    end

    function varargout = FromMatrix(varargin)
      % FROMMATRIX usage: FromMatrix(Matrix R) : returns gtsam.SOn
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double')
        varargout{1} = gtsam_wrapper(551, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SOn.FromMatrix');
    end

    function varargout = Lift(varargin)
      % LIFT usage: Lift(size_t n, Matrix R) : returns gtsam.SOn
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(552, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SOn.Lift');
    end

    function varargout = identity(varargin)
      % IDENTITY usage: identity() : returns gtsam.SOn
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(553, varargin{:});
        return
      end

      error('Arguments do not match any overload of function SOn.identity');
    end

    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.SOn
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(554, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.SOn.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.SOn.string_deserialize(sobj);
    end
  end
end
