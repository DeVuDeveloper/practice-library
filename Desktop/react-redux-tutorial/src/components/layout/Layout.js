import MainNavigation from './MainNavigation';
import './layout.module.css';

function Layout() {
  return (
    <div>
      <MainNavigation />
      <main className={main}>{children}</main>
    </div>
  );
}

export default Layout;
