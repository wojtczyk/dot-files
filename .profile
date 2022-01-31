export PATH=$HOME/bin:/usr/local/bin:$PATH
source $HOME/.bashrc

# MW Enable CMake to find Qt 5.4
export CMAKE_PREFIX_PATH=/Users/martin/Qt/5.8/clang_64

# MW add additional recursive TeX path
export TEXINPUTS=".:/usr/local/share/texmf//:"
export TEXMFCONFIG=/usr/local/share/texmf

export PATH=${PATH}:/Users/martin/Applications/Android\ Studio.app/sdk/tools:/Users/martin/Applications/Android\ Studio.app/sdk/platform-tools

export PATH=${PATH}:/Users/martin/Projects/github/phacility/arcanist/bin

export NDKROOT=/Users/martin/Applications/android-ndk-r10c
# MW google depot_tools in front of other paths
# MW disable depot_tools for now
export PATH=/Users/martin/Applications/depot_tools:${PATH}
export NACL_SDK_ROOT=/Users/martin/Applications/nacl_sdk/pepper_44

# MW use python cpp implementation of protobuf
export PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python
# MW set PYTHONPATH for "import caffe" to work
#export PYTHONPATH=/Users/martin/Projects/github/caffe-nv/python/:${PYTHONPATH}
# MW set CAFFE_HOME for digits
#export CAFFE_HOME=/Users/martin/Projects/github/caffe-nv
# MW set PYTHONPATH for bltk
export PYTHONPATH=/Users/martin/Projects/baylabs/bltk:${PYTHONPATH}

# added by Miniconda3 4.2.12 installer
export PATH="/Users/martin/Applications/miniconda3/bin:$PATH"
source "$HOME/.cargo/env"
