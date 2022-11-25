.class public Leu/chainfire/lumen/root/Runner;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/os/IBinder;

.field private b:Ljava/lang/reflect/Method;

.field private c:Ljava/lang/Integer;

.field private d:J

.field private e:[F

.field private f:Z

.field private g:J

.field private h:Ljava/lang/Boolean;

.field private i:J

.field private j:[F

.field private k:J

.field private l:I

.field private m:I

.field private n:Leu/chainfire/lumen/drivers/m$g;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/root/Runner;->a:Landroid/os/IBinder;

    iput-object v0, p0, Leu/chainfire/lumen/root/Runner;->b:Ljava/lang/reflect/Method;

    iput-object v0, p0, Leu/chainfire/lumen/root/Runner;->c:Ljava/lang/Integer;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Leu/chainfire/lumen/root/Runner;->d:J

    iput-object v0, p0, Leu/chainfire/lumen/root/Runner;->e:[F

    const/4 v3, 0x0

    iput-boolean v3, p0, Leu/chainfire/lumen/root/Runner;->f:Z

    iput-wide v1, p0, Leu/chainfire/lumen/root/Runner;->g:J

    iput-object v0, p0, Leu/chainfire/lumen/root/Runner;->h:Ljava/lang/Boolean;

    iput-wide v1, p0, Leu/chainfire/lumen/root/Runner;->i:J

    iput-object v0, p0, Leu/chainfire/lumen/root/Runner;->j:[F

    iput-wide v1, p0, Leu/chainfire/lumen/root/Runner;->k:J

    iput v3, p0, Leu/chainfire/lumen/root/Runner;->l:I

    const/16 v0, 0x3e8

    iput v0, p0, Leu/chainfire/lumen/root/Runner;->m:I

    sget-object v0, Leu/chainfire/lumen/drivers/m$g;->a:Leu/chainfire/lumen/drivers/m$g;

    iput-object v0, p0, Leu/chainfire/lumen/root/Runner;->n:Leu/chainfire/lumen/drivers/m$g;

    return-void
.end method

.method static synthetic a(Leu/chainfire/lumen/root/Runner;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/root/Runner;->m:I

    return p0
.end method

.method static synthetic b(Leu/chainfire/lumen/root/Runner;I)I
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/root/Runner;->m:I

    return p1
.end method

.method static synthetic c(Leu/chainfire/lumen/root/Runner;)Leu/chainfire/lumen/drivers/m$g;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/root/Runner;->n:Leu/chainfire/lumen/drivers/m$g;

    return-object p0
.end method

.method static synthetic d(Leu/chainfire/lumen/root/Runner;Leu/chainfire/lumen/drivers/m$g;)Leu/chainfire/lumen/drivers/m$g;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/root/Runner;->n:Leu/chainfire/lumen/drivers/m$g;

    return-object p1
.end method

.method static synthetic e(Leu/chainfire/lumen/root/Runner;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/root/Runner;->l()V

    return-void
.end method

.method static synthetic f(Leu/chainfire/lumen/root/Runner;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/root/Runner;->q(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Leu/chainfire/lumen/root/Runner;I)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/root/Runner;->n(I)V

    return-void
.end method

.method static synthetic h(Leu/chainfire/lumen/root/Runner;[FZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/root/Runner;->m([FZ)V

    return-void
.end method

.method static synthetic i(Leu/chainfire/lumen/root/Runner;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/root/Runner;->o(ZZ)V

    return-void
.end method

.method static synthetic j(Leu/chainfire/lumen/root/Runner;[F)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/root/Runner;->p([F)V

    return-void
.end method

.method private k(J)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    iget v4, p0, Leu/chainfire/lumen/root/Runner;->m:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    return-wide v0

    :cond_1
    return-wide p1
.end method

.method private l()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/lumen/root/Runner;->d:J

    iput-wide v0, p0, Leu/chainfire/lumen/root/Runner;->g:J

    iput-wide v0, p0, Leu/chainfire/lumen/root/Runner;->i:J

    iput-wide v0, p0, Leu/chainfire/lumen/root/Runner;->k:J

    return-void
.end method

.method private m([FZ)V
    .locals 7

    iget-wide v0, p0, Leu/chainfire/lumen/root/Runner;->g:J

    invoke-direct {p0, v0, v1}, Leu/chainfire/lumen/root/Runner;->k(J)J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/lumen/root/Runner;->g:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_4

    iget-object v0, p0, Leu/chainfire/lumen/root/Runner;->e:[F

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Leu/chainfire/lumen/root/Runner;->f:Z

    if-ne p2, v1, :cond_4

    if-nez p1, :cond_0

    array-length v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    array-length v1, p1

    array-length v0, v0

    if-ne v1, v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_3

    if-eqz v1, :cond_1

    aget v1, p1, v0

    iget-object v4, p0, Leu/chainfire/lumen/root/Runner;->e:[F

    aget v4, v4, v0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    return-void

    :cond_4
    new-array v0, v3, [Ljava/lang/Object;

    if-nez p1, :cond_5

    const-string v1, "null"

    goto :goto_3

    :cond_5
    const-string v1, "matrix"

    :goto_3
    aput-object v1, v0, v2

    const-string v1, "CLIENT"

    const-string v4, "--- setColorTransform(%s)"

    invoke-static {v1, v4, v0}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_6

    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "antiflicker:%d"

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Leu/chainfire/lumen/root/Runner;->l:I

    add-int/2addr v5, v3

    iput v5, p0, Leu/chainfire/lumen/root/Runner;->l:I

    rem-int/lit16 v5, v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Leu/chainfire/lumen/root/Runner;->q(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_4
    const/16 v3, 0x10

    if-ge v1, v3, :cond_8

    aget v3, p1, v1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_8
    iget-object v1, p0, Leu/chainfire/lumen/root/Runner;->a:Landroid/os/IBinder;

    const/16 v3, 0x3f7

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {v0}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :goto_5
    if-nez p1, :cond_9

    new-array p1, v2, [F

    :cond_9
    iput-object p1, p0, Leu/chainfire/lumen/root/Runner;->e:[F

    iput-boolean p2, p0, Leu/chainfire/lumen/root/Runner;->f:Z

    invoke-direct {p0}, Leu/chainfire/lumen/root/Runner;->r()J

    move-result-wide p1

    iput-wide p1, p0, Leu/chainfire/lumen/root/Runner;->g:J

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    const-string v0, "CF.lumen:Root"

    invoke-static {v0}, Leu/chainfire/lumen/Application;->e(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Leu/chainfire/lumen/root/Runner$b;

    invoke-direct {v1, v0}, Leu/chainfire/lumen/root/Runner$b;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    new-instance v0, Leu/chainfire/lumen/root/Runner;

    invoke-direct {v0}, Leu/chainfire/lumen/root/Runner;-><init>()V

    invoke-virtual {v0, p0}, Leu/chainfire/lumen/root/Runner;->run([Ljava/lang/String;)V

    return-void
.end method

.method private n(I)V
    .locals 5

    iget-wide v0, p0, Leu/chainfire/lumen/root/Runner;->d:J

    invoke-direct {p0, v0, v1}, Leu/chainfire/lumen/root/Runner;->k(J)J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/lumen/root/Runner;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/root/Runner;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CLIENT"

    const-string v3, "--- setDaltonizerMode(%d)"

    invoke-static {v1, v3, v0}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Leu/chainfire/lumen/root/Runner;->a:Landroid/os/IBinder;

    const/16 v3, 0x3f6

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/root/Runner;->c:Ljava/lang/Integer;

    invoke-direct {p0}, Leu/chainfire/lumen/root/Runner;->r()J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/lumen/root/Runner;->d:J

    return-void
.end method

.method private o(ZZ)V
    .locals 4

    if-nez p2, :cond_0

    iget-wide v0, p0, Leu/chainfire/lumen/root/Runner;->i:J

    invoke-direct {p0, v0, v1}, Leu/chainfire/lumen/root/Runner;->k(J)J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/lumen/root/Runner;->i:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    iget-object p2, p0, Leu/chainfire/lumen/root/Runner;->h:Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string v1, "true"

    goto :goto_0

    :cond_1
    const-string v1, "false"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CLIENT"

    const-string v3, "--- setForceGPUCompositing(%s)"

    invoke-static {v1, v3, v0}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Leu/chainfire/lumen/root/Runner;->a:Landroid/os/IBinder;

    const/16 v1, 0x3f0

    const/4 v3, 0x0

    invoke-interface {p2, v1, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    invoke-static {p2}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/root/Runner;->h:Ljava/lang/Boolean;

    invoke-direct {p0}, Leu/chainfire/lumen/root/Runner;->r()J

    move-result-wide p1

    iput-wide p1, p0, Leu/chainfire/lumen/root/Runner;->i:J

    return-void
.end method

.method private p([F)V
    .locals 7

    iget-wide v0, p0, Leu/chainfire/lumen/root/Runner;->k:J

    invoke-direct {p0, v0, v1}, Leu/chainfire/lumen/root/Runner;->k(J)J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/lumen/root/Runner;->k:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_4

    iget-object v0, p0, Leu/chainfire/lumen/root/Runner;->j:[F

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    array-length v1, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    array-length v1, p1

    array-length v0, v0

    if-ne v1, v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_3

    if-eqz v1, :cond_1

    aget v1, p1, v0

    iget-object v4, p0, Leu/chainfire/lumen/root/Runner;->j:[F

    aget v4, v4, v0

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    return-void

    :cond_4
    new-array v0, v3, [Ljava/lang/Object;

    if-nez p1, :cond_5

    const-string v1, "null"

    goto :goto_3

    :cond_5
    const-string v1, "matrix"

    :goto_3
    aput-object v1, v0, v2

    const-string v1, "CLIENT"

    const-string v4, "--- setInjectMatrix(%s)"

    invoke-static {v1, v4, v0}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_6

    const-string v0, "disabled"

    goto/16 :goto_4

    :cond_6
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v2

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v4, 0x2

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x5

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x6

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x7

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0x8

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0x9

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xa

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xb

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xc

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xd

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xe

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xf

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "%.5f:%.5f:%.5f:%d:%.5f:%.5f:%.5f:%d:%.5f:%.5f:%.5f:%d:%d:%d:%d:%d"

    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {p0, v0}, Leu/chainfire/lumen/root/Runner;->q(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0, v3}, Leu/chainfire/lumen/root/Runner;->o(ZZ)V

    if-nez p1, :cond_8

    new-array p1, v2, [F

    :cond_8
    iput-object p1, p0, Leu/chainfire/lumen/root/Runner;->j:[F

    invoke-direct {p0}, Leu/chainfire/lumen/root/Runner;->r()J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/lumen/root/Runner;->k:J

    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 6

    const-string v0, "cflumen.control.v4"

    :try_start_0
    const-string v1, "setProp(%s, %s)"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object p1, v3, v5

    invoke-static {v1, v3}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Leu/chainfire/lumen/root/Runner;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    aput-object p1, v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private r()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .locals 13

    const-class p1, Ljava/lang/String;

    const-string v0, "eu.chainfire.lumen"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v1, v2}, Leu/chainfire/librootjavadaemon/RootDaemon;->d(Ljava/lang/String;IZLeu/chainfire/librootjavadaemon/RootDaemon$b;)V

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "android.os.ServiceManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_0

    const-string p1, "Could not get ServiceManager class"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, v4}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v5, "getService"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object p1, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-nez v5, :cond_1

    const-string p1, "Could not get getService method"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, v4}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "SurfaceFlinger"

    aput-object v7, v6, v1

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    iput-object v5, p0, Leu/chainfire/lumen/root/Runner;->a:Landroid/os/IBinder;

    if-nez v5, :cond_2

    const-string p1, "Could not get SurfaceFlinger interface"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, v4}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    if-nez v4, :cond_3

    const-string p1, "Could not get SystemProperties class"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, v4}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string v4, "set"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p1, v6, v1

    aput-object p1, v6, v3

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/root/Runner;->b:Ljava/lang/reflect/Method;

    if-nez p1, :cond_4

    const-string p1, "Could not get set method"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, v4}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :cond_4
    new-array p1, v3, [Leu/chainfire/lumen/drivers/m$g;

    sget-object v4, Leu/chainfire/lumen/drivers/m$g;->a:Leu/chainfire/lumen/drivers/m$g;

    aput-object v4, p1, v1

    new-array v10, v3, [Leu/chainfire/lumen/drivers/ControlSetting;

    aput-object v2, v10, v1

    new-array v3, v3, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    new-instance v12, Leu/chainfire/lumen/root/Runner$1;

    move-object v4, v12

    move-object v5, p0

    move-object v6, v11

    move-object v7, p1

    move-object v8, v10

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Leu/chainfire/lumen/root/Runner$1;-><init>(Leu/chainfire/lumen/root/Runner;Ljava/lang/Object;[Leu/chainfire/lumen/drivers/m$g;[Leu/chainfire/lumen/drivers/ControlSetting;[J)V

    invoke-static {v0, v12, v1}, Leu/chainfire/librootjavadaemon/RootDaemon;->h(Ljava/lang/String;Landroid/os/IBinder;I)Leu/chainfire/librootjava/RootIPC;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Leu/chainfire/lumen/root/Runner$a;

    move-object v4, v1

    move-object v7, v3

    move-object v8, p1

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Leu/chainfire/lumen/root/Runner$a;-><init>(Leu/chainfire/lumen/root/Runner;Ljava/lang/Object;[J[Leu/chainfire/lumen/drivers/m$g;[Leu/chainfire/lumen/drivers/ControlSetting;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Leu/chainfire/librootjavadaemon/RootDaemon;->i()V

    throw v2
.end method
