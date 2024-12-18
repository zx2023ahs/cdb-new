/*
 * Copyright 1999-2018 Alibaba Group Holding Ltd.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.alibaba.csp.sentinel.dashboard.domain.cluster.state;

/**
 *
 * @since 1.4.1
 */
public class ClusterRequestLimitVO {

    private String namespace;
    private Double currentQps;
    private Double maxAllowedQps;

    public String getNamespace() {
        return namespace;
    }

    public ClusterRequestLimitVO setNamespace(String namespace) {
        this.namespace = namespace;
        return this;
    }

    public Double getCurrentQps() {
        return currentQps;
    }

    public ClusterRequestLimitVO setCurrentQps(Double currentQps) {
        this.currentQps = currentQps;
        return this;
    }

    public Double getMaxAllowedQps() {
        return maxAllowedQps;
    }

    public ClusterRequestLimitVO setMaxAllowedQps(Double maxAllowedQps) {
        this.maxAllowedQps = maxAllowedQps;
        return this;
    }

    @Override
    public String toString() {
        return "ClusterRequestLimitVO{" +
            "namespace='" + namespace + '\'' +
            ", currentQps=" + currentQps +
            ", maxAllowedQps=" + maxAllowedQps +
            '}';
    }
}
