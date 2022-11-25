.class public Leu/chainfire/lumen/drivers/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/lumen/drivers/d$d;
    }
.end annotation


# static fields
.field private static w:Leu/chainfire/lumen/drivers/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private final f:Landroid/os/HandlerThread;

.field private final g:Landroid/os/Handler;

.field private final h:Landroid/content/Context;

.field private final i:Ljava/lang/Object;

.field private j:Lc/a/a/c$d;

.field private k:Z

.field private volatile l:Leu/chainfire/lumen/a$d;

.field private volatile m:Leu/chainfire/lumen/a$d;

.field private volatile n:Z

.field private volatile o:J

.field private volatile p:J

.field private volatile q:I

.field private volatile r:I

.field private volatile s:J

.field private volatile t:Ljava/lang/String;

.field private volatile u:Ljava/lang/String;

.field private volatile v:Leu/chainfire/lumen/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Leu/chainfire/lumen/drivers/d;->b:I

    iput v1, p0, Leu/chainfire/lumen/drivers/d;->c:I

    iput v1, p0, Leu/chainfire/lumen/drivers/d;->d:I

    iput v1, p0, Leu/chainfire/lumen/drivers/d;->e:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Leu/chainfire/lumen/drivers/d;->i:Ljava/lang/Object;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/d;->j:Lc/a/a/c$d;

    iput-boolean v1, p0, Leu/chainfire/lumen/drivers/d;->k:Z

    new-instance v2, Leu/chainfire/lumen/a$d;

    invoke-direct {v2}, Leu/chainfire/lumen/a$d;-><init>()V

    iput-object v2, p0, Leu/chainfire/lumen/drivers/d;->l:Leu/chainfire/lumen/a$d;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/d;->m:Leu/chainfire/lumen/a$d;

    iput-boolean v1, p0, Leu/chainfire/lumen/drivers/d;->n:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Leu/chainfire/lumen/drivers/d;->o:J

    iput-wide v1, p0, Leu/chainfire/lumen/drivers/d;->p:J

    const/4 v3, -0x3

    iput v3, p0, Leu/chainfire/lumen/drivers/d;->q:I

    iput v3, p0, Leu/chainfire/lumen/drivers/d;->r:I

    iput-wide v1, p0, Leu/chainfire/lumen/drivers/d;->s:J

    iput-object v0, p0, Leu/chainfire/lumen/drivers/d;->t:Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/d;->u:Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    invoke-static {p1}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CF.lumen Control Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/lumen/drivers/d;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Leu/chainfire/lumen/drivers/d;->g:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/drivers/d;->h:Landroid/content/Context;

    invoke-virtual {p0}, Leu/chainfire/lumen/drivers/d;->F()V

    const-string p1, "new Controller()"

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/drivers/d;->E(Ljava/lang/String;)V

    return-void
.end method

.method private C([Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/d;->u:Ljava/lang/String;

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d;->u:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d;->u:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/d;->u:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method static synthetic a(Leu/chainfire/lumen/drivers/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/d;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Leu/chainfire/lumen/drivers/d;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/d;->z()V

    return-void
.end method

.method static synthetic c(Leu/chainfire/lumen/drivers/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/drivers/d;->n:Z

    return p1
.end method

.method static synthetic d(Leu/chainfire/lumen/drivers/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/d;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Leu/chainfire/lumen/drivers/d;)Leu/chainfire/lumen/a$d;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/d;->l:Leu/chainfire/lumen/a$d;

    return-object p0
.end method

.method static synthetic f(Leu/chainfire/lumen/drivers/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Leu/chainfire/lumen/drivers/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/d;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Leu/chainfire/lumen/drivers/d;[Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/drivers/d;->C([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic i(Leu/chainfire/lumen/drivers/d;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/d;->u()V

    return-void
.end method

.method static synthetic j(Leu/chainfire/lumen/drivers/d;)Lc/a/a/c$d;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/d;->j:Lc/a/a/c$d;

    return-object p0
.end method

.method static synthetic k(Leu/chainfire/lumen/drivers/d;)J
    .locals 2

    iget-wide v0, p0, Leu/chainfire/lumen/drivers/d;->o:J

    return-wide v0
.end method

.method static synthetic l(Leu/chainfire/lumen/drivers/d;)Leu/chainfire/lumen/a;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    return-object p0
.end method

.method static synthetic m(Leu/chainfire/lumen/drivers/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/d;->h:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic n(Leu/chainfire/lumen/drivers/d;)Leu/chainfire/lumen/a$d;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/d;->m:Leu/chainfire/lumen/a$d;

    return-object p0
.end method

.method static synthetic o(Leu/chainfire/lumen/drivers/d;Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/a$d;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/d;->m:Leu/chainfire/lumen/a$d;

    return-object p1
.end method

.method static synthetic p(Leu/chainfire/lumen/drivers/d;)J
    .locals 2

    iget-wide v0, p0, Leu/chainfire/lumen/drivers/d;->s:J

    return-wide v0
.end method

.method static synthetic q(Leu/chainfire/lumen/drivers/d;)J
    .locals 2

    iget-wide v0, p0, Leu/chainfire/lumen/drivers/d;->p:J

    return-wide v0
.end method

.method private u()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->a:Ljava/lang/String;

    const-string v1, "rootless"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->j:Lc/a/a/c$d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/a/a/c$d;->y()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/d;->j:Lc/a/a/c$d;

    :cond_1
    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->j:Lc/a/a/c$d;

    if-nez v0, :cond_2

    new-instance v0, Lc/a/a/c$b;

    invoke-direct {v0}, Lc/a/a/c$b;-><init>()V

    invoke-virtual {v0}, Lc/a/a/c$b;->p()Lc/a/a/c$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/a/a/c$b;->m(Z)Lc/a/a/c$b;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lc/a/a/c$b;->n(Landroid/os/Handler;)Lc/a/a/c$b;

    invoke-virtual {v0}, Lc/a/a/c$b;->l()Lc/a/a/c$d;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/d;->j:Lc/a/a/c$d;

    :cond_2
    return-void
.end method

.method public static x(Landroid/content/Context;)Leu/chainfire/lumen/drivers/d;
    .locals 1

    sget-object v0, Leu/chainfire/lumen/drivers/d;->w:Leu/chainfire/lumen/drivers/d;

    if-nez v0, :cond_0

    new-instance v0, Leu/chainfire/lumen/drivers/d;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/drivers/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Leu/chainfire/lumen/drivers/d;->w:Leu/chainfire/lumen/drivers/d;

    :cond_0
    sget-object p0, Leu/chainfire/lumen/drivers/d;->w:Leu/chainfire/lumen/drivers/d;

    return-object p0
.end method

.method private z()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v2, v1, Leu/chainfire/lumen/drivers/d;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v1, Leu/chainfire/lumen/drivers/d;->n:Z

    if-eqz v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iget-object v0, v1, Leu/chainfire/lumen/drivers/d;->m:Leu/chainfire/lumen/a$d;

    const/4 v3, 0x0

    iput-object v3, v1, Leu/chainfire/lumen/drivers/d;->m:Leu/chainfire/lumen/a$d;

    if-eqz v0, :cond_d

    invoke-direct/range {p0 .. p0}, Leu/chainfire/lumen/drivers/d;->u()V

    const/4 v4, 0x1

    iput-boolean v4, v1, Leu/chainfire/lumen/drivers/d;->n:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v1, Leu/chainfire/lumen/drivers/d;->o:J

    const/16 v9, 0x3e8

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    cmp-long v13, v7, v10

    if-lez v13, :cond_2

    iget-wide v7, v1, Leu/chainfire/lumen/drivers/d;->o:J

    sub-long/2addr v5, v7

    iget-wide v7, v1, Leu/chainfire/lumen/drivers/d;->p:J

    cmp-long v13, v5, v7

    if-lez v13, :cond_1

    iput-wide v10, v1, Leu/chainfire/lumen/drivers/d;->o:J

    const/16 v6, 0x3e8

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    iget-wide v7, v1, Leu/chainfire/lumen/drivers/d;->p:J

    div-long/2addr v5, v7

    long-to-int v6, v5

    :goto_0
    if-le v6, v9, :cond_3

    iput-wide v10, v1, Leu/chainfire/lumen/drivers/d;->o:J

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/16 v6, 0x3e8

    :cond_3
    :goto_1
    iget-wide v7, v1, Leu/chainfire/lumen/drivers/d;->o:J

    cmp-long v5, v7, v10

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    iget-wide v7, v1, Leu/chainfire/lumen/drivers/d;->s:J

    iget-object v13, v1, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    invoke-virtual {v13}, Leu/chainfire/lumen/a;->c()Leu/chainfire/lumen/drivers/c;

    move-result-object v13

    invoke-virtual {v13, v0}, Leu/chainfire/lumen/drivers/c;->e(Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/drivers/c$a;

    move-result-object v14

    invoke-virtual {v13}, Leu/chainfire/lumen/drivers/c;->f()Leu/chainfire/lumen/drivers/c$a;

    move-result-object v15

    if-eqz v5, :cond_5

    if-eqz v15, :cond_5

    invoke-virtual {v14, v15}, Leu/chainfire/lumen/drivers/c$a;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    iget v3, v1, Leu/chainfire/lumen/drivers/d;->q:I

    iget v9, v1, Leu/chainfire/lumen/drivers/d;->r:I

    if-ne v3, v9, :cond_5

    iput-wide v10, v1, Leu/chainfire/lumen/drivers/d;->o:J

    const-string v3, "next(%s) fade cancelled due to equality"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v12

    invoke-static {v3, v5}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    :cond_5
    const-string v3, "next(%s) fading:%d length:%d progress:%d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v12

    if-eqz v5, :cond_6

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    const/4 v4, 0x2

    iget-wide v10, v1, Leu/chainfire/lumen/drivers/d;->p:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v4

    const/4 v4, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v3, v9}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_8

    if-eqz v15, :cond_7

    move-object v3, v15

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v13, v3, v14, v6}, Leu/chainfire/lumen/drivers/c;->k(Leu/chainfire/lumen/drivers/c$a;Leu/chainfire/lumen/drivers/c$a;I)[Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_8
    invoke-virtual {v13, v14}, Leu/chainfire/lumen/drivers/c;->j(Leu/chainfire/lumen/drivers/c$a;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v14}, Leu/chainfire/lumen/drivers/c;->l(Leu/chainfire/lumen/drivers/c$a;)V

    :goto_5
    const/4 v4, -0x3

    if-eqz v5, :cond_a

    iget v5, v1, Leu/chainfire/lumen/drivers/d;->r:I

    const/4 v9, -0x1

    if-ne v5, v9, :cond_9

    const/16 v5, 0x1f4

    if-lt v6, v5, :cond_9

    invoke-virtual {v1, v9}, Leu/chainfire/lumen/drivers/d;->B(I)V

    iput v4, v1, Leu/chainfire/lumen/drivers/d;->r:I

    goto :goto_6

    :cond_9
    iget v4, v1, Leu/chainfire/lumen/drivers/d;->q:I

    iget v5, v1, Leu/chainfire/lumen/drivers/d;->r:I

    iget v9, v1, Leu/chainfire/lumen/drivers/d;->q:I

    sub-int/2addr v5, v9

    mul-int v5, v5, v6

    const/16 v6, 0x3e8

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Leu/chainfire/lumen/drivers/d;->B(I)V

    goto :goto_6

    :cond_a
    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->d()I

    move-result v5

    if-eq v5, v4, :cond_b

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->d()I

    move-result v4

    const/4 v5, -0x2

    if-eq v4, v5, :cond_b

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->d()I

    move-result v4

    invoke-virtual {v1, v4}, Leu/chainfire/lumen/drivers/d;->B(I)V

    :cond_b
    :goto_6
    new-instance v4, Leu/chainfire/lumen/drivers/d$d;

    invoke-direct {v4, v1, v7, v8, v0}, Leu/chainfire/lumen/drivers/d$d;-><init>(Leu/chainfire/lumen/drivers/d;JLeu/chainfire/lumen/a$d;)V

    iget-object v0, v1, Leu/chainfire/lumen/drivers/d;->j:Lc/a/a/c$d;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lc/a/a/c$d;->y()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {v1, v3}, Leu/chainfire/lumen/drivers/d;->C([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Leu/chainfire/lumen/drivers/d;->j:Lc/a/a/c$d;

    new-instance v5, Leu/chainfire/lumen/drivers/d$a;

    invoke-direct {v5, v1, v4}, Leu/chainfire/lumen/drivers/d$a;-><init>(Leu/chainfire/lumen/drivers/d;Leu/chainfire/lumen/drivers/d$d;)V

    invoke-virtual {v0, v3, v12, v5}, Lc/a/a/c$d;->t([Ljava/lang/String;ILc/a/a/c$f;)V

    goto :goto_7

    :cond_c
    iget-object v0, v1, Leu/chainfire/lumen/drivers/d;->g:Landroid/os/Handler;

    new-instance v3, Leu/chainfire/lumen/drivers/d$b;

    invoke-direct {v3, v1, v4}, Leu/chainfire/lumen/drivers/d$b;-><init>(Leu/chainfire/lumen/drivers/d;Leu/chainfire/lumen/drivers/d$d;)V

    const-wide/16 v4, 0x4

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    :goto_7
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized A(J)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/d;->l:Leu/chainfire/lumen/a$d;

    const/4 v2, 0x0

    const-string v5, "restore"

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Leu/chainfire/lumen/drivers/d;->r(Leu/chainfire/lumen/a$d;ZJLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public B(I)V
    .locals 3

    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    const-string v1, "screen_brightness_mode"

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Leu/chainfire/lumen/drivers/d;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method public D()Z
    .locals 6

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v0, v0, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v0, v0, Leu/chainfire/lumen/a;->l:Leu/chainfire/lumen/a$f;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v0

    sget-object v3, Leu/chainfire/lumen/a$e;->e:Leu/chainfire/lumen/a$e;

    if-ne v0, v3, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Aborting: location not set, but automatic mode is set"

    invoke-static {v3, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v3, v3, Leu/chainfire/lumen/a;->l:Leu/chainfire/lumen/a$f;

    invoke-virtual {v3}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v3

    invoke-virtual {v3}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v3

    sget-object v4, Leu/chainfire/lumen/a$e;->d:Leu/chainfire/lumen/a$e;

    if-ne v3, v4, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Aborting: master mode disabled"

    invoke-static {v3, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_4

    iget-object v3, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v3, v3, Leu/chainfire/lumen/a;->P:Leu/chainfire/lumen/a$c;

    invoke-virtual {v3}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Aborting: cancelling abort, temp mode set"

    invoke-static {v3, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v3, v3, Leu/chainfire/lumen/a;->l:Leu/chainfire/lumen/a$f;

    invoke-virtual {v3}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v3

    invoke-virtual {v3}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v4

    sget-object v5, Leu/chainfire/lumen/a$e;->e:Leu/chainfire/lumen/a$e;

    if-ne v4, v5, :cond_3

    iget-object v3, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v3, v3, Leu/chainfire/lumen/a;->n:Leu/chainfire/lumen/a$f;

    invoke-virtual {v3}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v3

    :cond_3
    invoke-virtual {v3}, Leu/chainfire/lumen/a$d;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v4, v4, Leu/chainfire/lumen/a;->m:Leu/chainfire/lumen/a$f;

    invoke-virtual {v4}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v4

    invoke-virtual {v4}, Leu/chainfire/lumen/a$d;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Aborting: cancelling abort, mode not applied yet"

    invoke-static {v3, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v3, v3, Leu/chainfire/lumen/a;->m:Leu/chainfire/lumen/a$f;

    invoke-virtual {v3}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v3

    invoke-virtual {v3}, Leu/chainfire/lumen/a$d;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v3, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v3, v3, Leu/chainfire/lumen/a;->l:Leu/chainfire/lumen/a$f;

    invoke-virtual {v3}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v3

    invoke-virtual {v3}, Leu/chainfire/lumen/a$d;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "[%s] v [%s]"

    invoke-static {v3, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    xor-int/lit8 v0, v2, 0x1

    return v0
.end method

.method public declared-synchronized E(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "updateDriver: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Leu/chainfire/lumen/drivers/d$c;

    invoke-direct {v1, p0, p1}, Leu/chainfire/lumen/drivers/d$c;-><init>(Leu/chainfire/lumen/drivers/d;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized F()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->i:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v1, v1, Leu/chainfire/lumen/a;->I:Leu/chainfire/lumen/a$h;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$h;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Leu/chainfire/lumen/drivers/d;->b:I

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v1, v1, Leu/chainfire/lumen/a;->J:Leu/chainfire/lumen/a$h;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$h;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Leu/chainfire/lumen/drivers/d;->c:I

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v1, v1, Leu/chainfire/lumen/a;->K:Leu/chainfire/lumen/a$h;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$h;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Leu/chainfire/lumen/drivers/d;->d:I

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v1, v1, Leu/chainfire/lumen/a;->L:Leu/chainfire/lumen/a$h;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$h;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Leu/chainfire/lumen/drivers/d;->e:I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public declared-synchronized r(Leu/chainfire/lumen/a$d;ZJLjava/lang/String;)Z
    .locals 6

    monitor-enter p0

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    :try_start_0
    iget p3, p0, Leu/chainfire/lumen/drivers/d;->b:I

    :goto_0
    int-to-long p3, p3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    const-wide/16 v0, -0x2

    cmp-long v2, p3, v0

    if-nez v2, :cond_1

    iget p3, p0, Leu/chainfire/lumen/drivers/d;->c:I

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x3

    cmp-long v2, p3, v0

    if-nez v2, :cond_2

    iget p3, p0, Leu/chainfire/lumen/drivers/d;->d:I

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x4

    cmp-long v2, p3, v0

    if-nez v2, :cond_3

    iget p3, p0, Leu/chainfire/lumen/drivers/d;->e:I

    goto :goto_0

    :cond_3
    :goto_1
    const-string v0, "apply(%s) temporary:%d fadeMS:%d reason:[%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    aput-object p5, v1, v4

    invoke-static {v0, v1}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    const-string v0, ":temporary"

    goto :goto_3

    :cond_5
    const-string v0, ""

    :goto_3
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/d;->k:Z

    if-eqz v0, :cond_6

    const-string v0, ":tempMode"

    goto :goto_4

    :cond_6
    const-string v0, ""

    :goto_4
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->t:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->t:Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_7

    monitor-exit p0

    return v2

    :cond_7
    :try_start_1
    iput-object p5, p0, Leu/chainfire/lumen/drivers/d;->t:Ljava/lang/String;

    if-nez p2, :cond_8

    iget-boolean p5, p0, Leu/chainfire/lumen/drivers/d;->k:Z

    if-nez p5, :cond_8

    iput-object p1, p0, Leu/chainfire/lumen/drivers/d;->l:Leu/chainfire/lumen/a$d;

    :cond_8
    iget-object p5, p0, Leu/chainfire/lumen/drivers/d;->i:Ljava/lang/Object;

    monitor-enter p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_9

    :try_start_2
    iput-wide v0, p0, Leu/chainfire/lumen/drivers/d;->o:J

    iput-wide v0, p0, Leu/chainfire/lumen/drivers/d;->p:J

    goto :goto_5

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/lumen/drivers/d;->o:J

    iput-wide p3, p0, Leu/chainfire/lumen/drivers/d;->p:J

    invoke-virtual {p0}, Leu/chainfire/lumen/drivers/d;->y()Z

    move-result p3

    invoke-virtual {p0}, Leu/chainfire/lumen/drivers/d;->w()I

    move-result p4

    const/4 v0, -0x3

    iput v0, p0, Leu/chainfire/lumen/drivers/d;->q:I

    iput v0, p0, Leu/chainfire/lumen/drivers/d;->r:I

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->d()I

    move-result v1

    if-eq v1, v0, :cond_c

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->d()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->d()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    if-nez p3, :cond_c

    iput v0, p0, Leu/chainfire/lumen/drivers/d;->q:I

    iput v2, p0, Leu/chainfire/lumen/drivers/d;->r:I

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->d()I

    move-result p3

    if-eq p3, p4, :cond_c

    iput p4, p0, Leu/chainfire/lumen/drivers/d;->q:I

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->d()I

    move-result p3

    iput p3, p0, Leu/chainfire/lumen/drivers/d;->r:I

    :cond_c
    :goto_5
    iget-wide p3, p0, Leu/chainfire/lumen/drivers/d;->s:J

    const-wide/16 v0, 0x1

    add-long/2addr p3, v0

    iput-wide p3, p0, Leu/chainfire/lumen/drivers/d;->s:J

    if-nez p2, :cond_d

    iget-boolean p2, p0, Leu/chainfire/lumen/drivers/d;->k:Z

    if-nez p2, :cond_e

    :cond_d
    iput-object p1, p0, Leu/chainfire/lumen/drivers/d;->m:Leu/chainfire/lumen/a$d;

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/d;->z()V

    :cond_e
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v3

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized s()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Leu/chainfire/lumen/drivers/d;->k:Z

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v1, v1, Leu/chainfire/lumen/a;->P:Leu/chainfire/lumen/a$c;

    invoke-virtual {v1, v0}, Leu/chainfire/lumen/a$c;->d(Z)V

    invoke-virtual {p0}, Leu/chainfire/lumen/drivers/d;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized t()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->v:Leu/chainfire/lumen/a;

    iget-object v0, v0, Leu/chainfire/lumen/a;->P:Leu/chainfire/lumen/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leu/chainfire/lumen/a$c;->d(Z)V

    iput-boolean v1, p0, Leu/chainfire/lumen/drivers/d;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d;->h:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->a0(Landroid/content/Context;)V

    return-void
.end method

.method public w()I
    .locals 6

    invoke-virtual {p0}, Leu/chainfire/lumen/drivers/d;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1000

    :try_start_1
    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    add-int/lit8 v2, v2, -0x1

    const-string v5, "US-ASCII"

    invoke-direct {v3, v1, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v3, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/16 v0, 0x7f

    :try_start_3
    iget-object v1, p0, Leu/chainfire/lumen/drivers/d;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return v0
.end method

.method public y()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/d;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
