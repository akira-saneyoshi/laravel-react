import React from 'react';
import {Switch, Route} from 'react-router-dom';
import Navbar from '../../layouts/frontend/Navbar';

import publicrouteslist from '../../routes/publicroutelist';

const FrontendLayout = () => {
    return (
        <div>
            <Navbar />

                <div>

                    <Switch>
                        {publicrouteslist.map((routedata, idx) => {
                            return (
                                routedata.component && (
                                    <Route 
                                        key={idx}
                                        path={routedata.path}
                                        exact={routedata.exact}
                                        name={routedata.name}
                                        render={(props) => (
                                            <routedata.component {...props} />
                                        )}
                                    />
                                )
                            )
                        })}
                    </Switch>

                </div>

        </div>
    );
}

export default FrontendLayout;