.class Leu/chainfire/lumen/ui/SettingsFragment$n0;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/ui/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "n0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/app/ProgressDialog;

.field private volatile c:Landroid/location/Location;

.field private final d:Landroid/location/LocationListener;

.field final synthetic e:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method public constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->b:Landroid/app/ProgressDialog;

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;

    new-instance p1, Leu/chainfire/lumen/ui/SettingsFragment$n0$b;

    invoke-direct {p1, p0}, Leu/chainfire/lumen/ui/SettingsFragment$n0$b;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$n0;)V

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->d:Landroid/location/LocationListener;

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Leu/chainfire/lumen/ui/SettingsFragment$n0;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->b:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic b(Leu/chainfire/lumen/ui/SettingsFragment$n0;)Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic c(Leu/chainfire/lumen/ui/SettingsFragment$n0;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;

    return-object p1
.end method


# virtual methods
.method protected varargs d([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->a:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, La/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, La/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    iget-object v4, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    iget-object v5, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    :cond_2
    iput-object v3, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-wide/16 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    :try_start_1
    iget-object v5, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->d:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    goto :goto_2

    :cond_5
    :goto_3
    const/16 v0, 0x64

    if-ge v7, v0, :cond_7

    const-wide/16 v0, 0x64

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->b:Landroid/app/ProgressDialog;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;

    if-eqz v1, :cond_6

    monitor-exit v0

    goto :goto_4

    :cond_6
    monitor-exit v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_7
    :goto_4
    :try_start_4
    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->d:Landroid/location/LocationListener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$n0;->d([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected e(Ljava/lang/Void;)V
    .locals 9

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-static {}, Lcom/google/android/gms/common/b;->q()Lcom/google/android/gms/common/b;

    move-result-object p1

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/b;->h(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v1, v2}, Leu/chainfire/lumen/ui/MapsActivity;->j(Landroid/content/Context;Ljava/lang/Double;Ljava/lang/Double;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/lumen/ui/MapsActivity;->i(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;

    if-nez v0, :cond_2

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->y(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/ui/a;

    move-result-object v1

    const v2, 0x7f090033

    const v3, 0x7f090098

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Leu/chainfire/lumen/ui/a;->b(IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->i:Leu/chainfire/lumen/a$g;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Leu/chainfire/lumen/a$g;->d(F)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->j:Leu/chainfire/lumen/a$g;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->c:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Leu/chainfire/lumen/a$g;->d(F)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/lumen/a$c;->d(Z)V

    :goto_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/common/b;->q()Lcom/google/android/gms/common/b;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/common/b;->n(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$n0;->e(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->a:Landroid/content/Context;

    const v2, 0x7f090032

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->b:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->b:Landroid/app/ProgressDialog;

    new-instance v1, Leu/chainfire/lumen/ui/SettingsFragment$n0$a;

    invoke-direct {v1, p0}, Leu/chainfire/lumen/ui/SettingsFragment$n0$a;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$n0;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$n0;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
