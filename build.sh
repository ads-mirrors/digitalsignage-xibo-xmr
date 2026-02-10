#!/usr/bin/env sh
#
# Copyright (C) 2026 Xibo Signage Ltd
#
# Xibo - Digital Signage - https://xibosignage.com
#
# This file is part of Xibo.
#
# Xibo is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.
#
# Xibo is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with Xibo.  If not, see <http://www.gnu.org/licenses/>.
#

docker run --rm --name xmr-build \
    -v "$PWD":/usr/src/myapp \
    -w /usr/src/myapp composer \
    /bin/bash -c "echo 'phar.readonly = Off' > /usr/local/etc/php/php.ini; curl -LSs https://github.com/box-project/box/releases/download/4.6.10/box.phar -o box.phar; php box.phar compile; rm box.phar"
