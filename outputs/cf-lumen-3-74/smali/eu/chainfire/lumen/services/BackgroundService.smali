.class public Leu/chainfire/lumen/services/BackgroundService;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/lumen/services/BackgroundService$l;,
        Leu/chainfire/lumen/services/BackgroundService$m;,
        Leu/chainfire/lumen/services/BackgroundService$k;
    }
.end annotation


# static fields
.field public static P:Z = false

.field public static Q:Z = false

.field public static R:Z = false

.field public static S:Z = false

.field public static T:Z = false

.field public static U:Z = false

.field private static final V:[Ljava/lang/String;


# instance fields
.field private volatile A:J

.field private volatile B:Z

.field private volatile C:F

.field private volatile D:F

.field private volatile E:F

.field private volatile F:Ljava/lang/Boolean;

.field private volatile G:Ljava/lang/String;

.field private volatile H:Z

.field private volatile I:Leu/chainfire/lumen/drivers/l;

.field private volatile J:Leu/chainfire/lumen/services/a;

.field private final K:Ljava/lang/Runnable;

.field private final L:Ljava/lang/Runnable;

.field private final M:Ljava/lang/Runnable;

.field private final N:Landroid/content/BroadcastReceiver;

.field public final O:Landroid/content/BroadcastReceiver;

.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;

.field private d:Leu/chainfire/lumen/drivers/d;

.field private e:Leu/chainfire/lumen/a;

.field private f:Landroid/app/NotificationChannel;

.field private g:Landroid/app/NotificationChannel;

.field private h:Landroid/app/NotificationChannel;

.field private volatile i:Z

.field private volatile j:J

.field private volatile k:Z

.field private l:Landroid/app/AlarmManager;

.field private m:Landroid/app/PendingIntent;

.field private n:Z

.field private o:Landroid/hardware/SensorManager;

.field private p:Landroid/hardware/Sensor;

.field private volatile q:Z

.field private volatile r:Leu/chainfire/lumen/services/BackgroundService$m;

.field private volatile s:F

.field private volatile t:Leu/chainfire/lumen/services/BackgroundService$l;

.field private volatile u:I

.field private volatile v:Z

.field private volatile w:Leu/chainfire/lumen/services/BackgroundService$k;

.field private volatile x:Leu/chainfire/lumen/a$d;

.field private volatile y:J

.field private volatile z:J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "com.android.deskclock.ALARM_ALERT"

    const-string v1, "com.android.deskclock.ALARM_SNOOZE"

    const-string v2, "com.android.deskclock.ALARM_DISMISS"

    const-string v3, "com.android.deskclock.ALARM_DONE"

    const-string v4, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    const-string v5, "com.htc.android.worldclock.ALARM_ALERT"

    const-string v6, "com.htc.android.ALARM_ALERT"

    const-string v7, "com.sonyericsson.alarm.ALARM_ALERT"

    const-string v8, "zte.com.cn.alarmclock.ALARM_ALERT"

    const-string v9, "com.motorola.blur.alarmclock.ALARM_ALERT"

    const-string v10, "com.lge.alarm.alarmclocknew"

    const-string v11, "com.mobitobi.android.gentlealarm.ALARM_INFO"

    const-string v12, "com.urbandroid.sleep.alarmclock.ALARM_ALERT"

    const-string v13, "com.splunchy.android.alarmclock.ALARM_ALERT"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/chainfire/lumen/services/BackgroundService;->V:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->a:Landroid/os/HandlerThread;

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->b:Landroid/os/Handler;

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->c:Landroid/os/Handler;

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->d:Leu/chainfire/lumen/drivers/d;

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->f:Landroid/app/NotificationChannel;

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->g:Landroid/app/NotificationChannel;

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->h:Landroid/app/NotificationChannel;

    const/4 v1, 0x1

    iput-boolean v1, p0, Leu/chainfire/lumen/services/BackgroundService;->i:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Leu/chainfire/lumen/services/BackgroundService;->j:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Leu/chainfire/lumen/services/BackgroundService;->k:Z

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->l:Landroid/app/AlarmManager;

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->m:Landroid/app/PendingIntent;

    iput-boolean v3, p0, Leu/chainfire/lumen/services/BackgroundService;->n:Z

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->o:Landroid/hardware/SensorManager;

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->p:Landroid/hardware/Sensor;

    iput-boolean v3, p0, Leu/chainfire/lumen/services/BackgroundService;->q:Z

    sget-object v4, Leu/chainfire/lumen/services/BackgroundService$m;->a:Leu/chainfire/lumen/services/BackgroundService$m;

    iput-object v4, p0, Leu/chainfire/lumen/services/BackgroundService;->r:Leu/chainfire/lumen/services/BackgroundService$m;

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Leu/chainfire/lumen/services/BackgroundService;->s:F

    sget-object v4, Leu/chainfire/lumen/services/BackgroundService$l;->a:Leu/chainfire/lumen/services/BackgroundService$l;

    iput-object v4, p0, Leu/chainfire/lumen/services/BackgroundService;->t:Leu/chainfire/lumen/services/BackgroundService$l;

    iput v3, p0, Leu/chainfire/lumen/services/BackgroundService;->u:I

    iput-boolean v3, p0, Leu/chainfire/lumen/services/BackgroundService;->v:Z

    sget-object v4, Leu/chainfire/lumen/services/BackgroundService$k;->a:Leu/chainfire/lumen/services/BackgroundService$k;

    iput-object v4, p0, Leu/chainfire/lumen/services/BackgroundService;->w:Leu/chainfire/lumen/services/BackgroundService$k;

    new-instance v4, Leu/chainfire/lumen/a$d;

    invoke-direct {v4}, Leu/chainfire/lumen/a$d;-><init>()V

    iput-object v4, p0, Leu/chainfire/lumen/services/BackgroundService;->x:Leu/chainfire/lumen/a$d;

    iput-wide v1, p0, Leu/chainfire/lumen/services/BackgroundService;->y:J

    iput-wide v1, p0, Leu/chainfire/lumen/services/BackgroundService;->z:J

    iput-wide v1, p0, Leu/chainfire/lumen/services/BackgroundService;->A:J

    iput-boolean v3, p0, Leu/chainfire/lumen/services/BackgroundService;->B:Z

    const/4 v1, 0x0

    iput v1, p0, Leu/chainfire/lumen/services/BackgroundService;->C:F

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Leu/chainfire/lumen/services/BackgroundService;->D:F

    const/high16 v1, 0x437a0000    # 250.0f

    iput v1, p0, Leu/chainfire/lumen/services/BackgroundService;->E:F

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->F:Ljava/lang/Boolean;

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->G:Ljava/lang/String;

    iput-boolean v3, p0, Leu/chainfire/lumen/services/BackgroundService;->H:Z

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->I:Leu/chainfire/lumen/drivers/l;

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->J:Leu/chainfire/lumen/services/a;

    new-instance v0, Leu/chainfire/lumen/services/BackgroundService$e;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/services/BackgroundService$e;-><init>(Leu/chainfire/lumen/services/BackgroundService;)V

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->K:Ljava/lang/Runnable;

    new-instance v0, Leu/chainfire/lumen/services/BackgroundService$f;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/services/BackgroundService$f;-><init>(Leu/chainfire/lumen/services/BackgroundService;)V

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->L:Ljava/lang/Runnable;

    new-instance v0, Leu/chainfire/lumen/services/BackgroundService$g;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/services/BackgroundService$g;-><init>(Leu/chainfire/lumen/services/BackgroundService;)V

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->M:Ljava/lang/Runnable;

    new-instance v0, Leu/chainfire/lumen/services/BackgroundService$i;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/services/BackgroundService$i;-><init>(Leu/chainfire/lumen/services/BackgroundService;)V

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->N:Landroid/content/BroadcastReceiver;

    new-instance v0, Leu/chainfire/lumen/services/BackgroundService$j;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/services/BackgroundService$j;-><init>(Leu/chainfire/lumen/services/BackgroundService;)V

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->O:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Leu/chainfire/lumen/services/BackgroundService;)Z
    .locals 0

    iget-boolean p0, p0, Leu/chainfire/lumen/services/BackgroundService;->H:Z

    return p0
.end method

.method static synthetic B(Leu/chainfire/lumen/services/BackgroundService;Z)Z
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/services/BackgroundService;->H:Z

    return p1
.end method

.method static synthetic C(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->F:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic D(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->F:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic E(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->G:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic F(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->G:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic G(Leu/chainfire/lumen/services/BackgroundService;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/services/BackgroundService;->c0()V

    return-void
.end method

.method static synthetic H(Leu/chainfire/lumen/services/BackgroundService;J)J
    .locals 0

    iput-wide p1, p0, Leu/chainfire/lumen/services/BackgroundService;->j:J

    return-wide p1
.end method

.method static synthetic I(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->K:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic J(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/services/BackgroundService;->h0(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic K(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/drivers/l;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->I:Leu/chainfire/lumen/drivers/l;

    return-object p0
.end method

.method static synthetic L(Leu/chainfire/lumen/services/BackgroundService;)Z
    .locals 0

    iget-boolean p0, p0, Leu/chainfire/lumen/services/BackgroundService;->v:Z

    return p0
.end method

.method static synthetic M(Leu/chainfire/lumen/services/BackgroundService;Z)Z
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/services/BackgroundService;->v:Z

    return p1
.end method

.method static synthetic N(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/a;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->J:Leu/chainfire/lumen/services/a;

    return-object p0
.end method

.method static synthetic O(Leu/chainfire/lumen/services/BackgroundService;)J
    .locals 2

    iget-wide v0, p0, Leu/chainfire/lumen/services/BackgroundService;->y:J

    return-wide v0
.end method

.method static synthetic P(Leu/chainfire/lumen/services/BackgroundService;J)J
    .locals 0

    iput-wide p1, p0, Leu/chainfire/lumen/services/BackgroundService;->y:J

    return-wide p1
.end method

.method static synthetic Q(Leu/chainfire/lumen/services/BackgroundService;)J
    .locals 2

    iget-wide v0, p0, Leu/chainfire/lumen/services/BackgroundService;->A:J

    return-wide v0
.end method

.method static synthetic R(Leu/chainfire/lumen/services/BackgroundService;J)J
    .locals 0

    iput-wide p1, p0, Leu/chainfire/lumen/services/BackgroundService;->A:J

    return-wide p1
.end method

.method static synthetic S(Leu/chainfire/lumen/services/BackgroundService;)J
    .locals 2

    iget-wide v0, p0, Leu/chainfire/lumen/services/BackgroundService;->z:J

    return-wide v0
.end method

.method static synthetic T(Leu/chainfire/lumen/services/BackgroundService;J)J
    .locals 0

    iput-wide p1, p0, Leu/chainfire/lumen/services/BackgroundService;->z:J

    return-wide p1
.end method

.method static synthetic U(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$l;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->t:Leu/chainfire/lumen/services/BackgroundService$l;

    return-object p0
.end method

.method static synthetic V(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$l;)Leu/chainfire/lumen/services/BackgroundService$l;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->t:Leu/chainfire/lumen/services/BackgroundService$l;

    return-object p1
.end method

.method private W(Leu/chainfire/lumen/services/BackgroundService$l;Leu/chainfire/lumen/services/BackgroundService$l;)I
    .locals 5

    if-ne p1, p2, :cond_0

    iget p1, p0, Leu/chainfire/lumen/services/BackgroundService;->u:I

    return p1

    :cond_0
    sget-object v0, Leu/chainfire/lumen/services/BackgroundService$l;->b:Leu/chainfire/lumen/services/BackgroundService$l;

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    if-eq p1, v0, :cond_f

    sget-object v3, Leu/chainfire/lumen/services/BackgroundService$l;->c:Leu/chainfire/lumen/services/BackgroundService$l;

    if-eq p1, v3, :cond_f

    if-eq p2, v0, :cond_f

    if-eq p2, v3, :cond_f

    iget-boolean v0, p0, Leu/chainfire/lumen/services/BackgroundService;->B:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v0, Leu/chainfire/lumen/services/BackgroundService$l;->h:Leu/chainfire/lumen/services/BackgroundService$l;

    if-eq p1, v0, :cond_d

    sget-object v3, Leu/chainfire/lumen/services/BackgroundService$l;->i:Leu/chainfire/lumen/services/BackgroundService$l;

    if-eq p1, v3, :cond_d

    sget-object v4, Leu/chainfire/lumen/services/BackgroundService$l;->j:Leu/chainfire/lumen/services/BackgroundService$l;

    if-eq p1, v4, :cond_d

    if-eq p2, v0, :cond_d

    if-eq p2, v3, :cond_d

    if-ne p2, v4, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Leu/chainfire/lumen/services/BackgroundService$l;->e:Leu/chainfire/lumen/services/BackgroundService$l;

    if-ne p1, v0, :cond_3

    sget-object v1, Leu/chainfire/lumen/services/BackgroundService$l;->f:Leu/chainfire/lumen/services/BackgroundService$l;

    if-eq p2, v1, :cond_5

    sget-object v1, Leu/chainfire/lumen/services/BackgroundService$l;->g:Leu/chainfire/lumen/services/BackgroundService$l;

    if-eq p2, v1, :cond_5

    :cond_3
    sget-object v1, Leu/chainfire/lumen/services/BackgroundService$l;->f:Leu/chainfire/lumen/services/BackgroundService$l;

    if-eq p1, v1, :cond_4

    sget-object v3, Leu/chainfire/lumen/services/BackgroundService$l;->g:Leu/chainfire/lumen/services/BackgroundService$l;

    if-ne p1, v3, :cond_7

    iget-boolean v3, p0, Leu/chainfire/lumen/services/BackgroundService;->k:Z

    if-nez v3, :cond_7

    :cond_4
    if-ne p2, v0, :cond_7

    :cond_5
    if-ne p2, v0, :cond_6

    const/4 v1, -0x1

    goto :goto_3

    :cond_6
    const/4 v1, -0x2

    goto :goto_3

    :cond_7
    sget-object v3, Leu/chainfire/lumen/services/BackgroundService$l;->g:Leu/chainfire/lumen/services/BackgroundService$l;

    if-ne p1, v3, :cond_8

    if-eq p2, v1, :cond_a

    if-eq p2, v0, :cond_a

    :cond_8
    if-eq p1, v1, :cond_9

    if-ne p1, v0, :cond_c

    :cond_9
    if-ne p2, v3, :cond_c

    :cond_a
    if-ne p1, v3, :cond_b

    iget-boolean p1, p0, Leu/chainfire/lumen/services/BackgroundService;->k:Z

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, -0x3

    goto :goto_3

    :cond_c
    const/16 v1, 0x1388

    goto :goto_3

    :cond_d
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v2, p0, Leu/chainfire/lumen/services/BackgroundService;->j:J

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, p1, v2

    if-gez v0, :cond_e

    goto :goto_3

    :cond_e
    const/4 v1, -0x4

    goto :goto_3

    :cond_f
    :goto_1
    iput-boolean v1, p0, Leu/chainfire/lumen/services/BackgroundService;->B:Z

    :goto_2
    const/16 v1, 0x1f4

    :goto_3
    iput v1, p0, Leu/chainfire/lumen/services/BackgroundService;->u:I

    return v1
.end method

.method private X()Leu/chainfire/lumen/services/BackgroundService;
    .locals 0

    return-object p0
.end method

.method private static Y(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private Z()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    return-object p0
.end method

.method public static a0(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Leu/chainfire/lumen/services/BackgroundService;->b0(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/services/BackgroundService;->X()Leu/chainfire/lumen/services/BackgroundService;

    return-object p0
.end method

.method public static b0(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p0}, Leu/chainfire/lumen/services/BackgroundService;->Y(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "eu.chainfire.lumen.EXTRA_REASON"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method static synthetic c(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$k;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->w:Leu/chainfire/lumen/services/BackgroundService$k;

    return-object p0
.end method

.method private c0()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->c:Landroid/os/Handler;

    new-instance v1, Leu/chainfire/lumen/services/BackgroundService$b;

    invoke-direct {v1, p0}, Leu/chainfire/lumen/services/BackgroundService$b;-><init>(Leu/chainfire/lumen/services/BackgroundService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :goto_0
    return-void
.end method

.method static synthetic d(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$k;)Leu/chainfire/lumen/services/BackgroundService$k;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->w:Leu/chainfire/lumen/services/BackgroundService$k;

    return-object p1
.end method

.method private d0(II)J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-le p2, p1, :cond_0

    sub-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    :goto_0
    add-long/2addr v0, p1

    return-wide v0

    :cond_0
    sub-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    add-long/2addr v0, p1

    const-wide/32 p1, 0x5265c00

    goto :goto_0
.end method

.method static synthetic e(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a$d;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->x:Leu/chainfire/lumen/a$d;

    return-object p0
.end method

.method private e0()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {p0}, Leu/chainfire/lumen/services/BackgroundService;->X()Leu/chainfire/lumen/services/BackgroundService;

    const-string v2, "service"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f05001b

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x7f090002

    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    iput-boolean v4, p0, Leu/chainfire/lumen/services/BackgroundService;->H:Z

    :cond_0
    return-void
.end method

.method static synthetic f(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/a$d;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->x:Leu/chainfire/lumen/a$d;

    return-object p1
.end method

.method public static f0(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Leu/chainfire/lumen/services/BackgroundService;->Y(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic g(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->m:Landroid/app/PendingIntent;

    return-object p0
.end method

.method private g0(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leu/chainfire/lumen/services/BackgroundService;->h0(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/AlarmManager;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->l:Landroid/app/AlarmManager;

    return-object p0
.end method

.method private h0(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Leu/chainfire/lumen/services/BackgroundService;->Z()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Leu/chainfire/lumen/services/BackgroundService;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method static synthetic i(Leu/chainfire/lumen/services/BackgroundService;II)J
    .locals 0

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/services/BackgroundService;->d0(II)J

    move-result-wide p0

    return-wide p0
.end method

.method private i0(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Leu/chainfire/lumen/services/BackgroundService;->s:F

    sget-object v0, Leu/chainfire/lumen/services/BackgroundService$m;->a:Leu/chainfire/lumen/services/BackgroundService$m;

    iget v1, p0, Leu/chainfire/lumen/services/BackgroundService;->E:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    sget-object v0, Leu/chainfire/lumen/services/BackgroundService$m;->d:Leu/chainfire/lumen/services/BackgroundService$m;

    goto :goto_0

    :cond_1
    iget v1, p0, Leu/chainfire/lumen/services/BackgroundService;->D:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    sget-object v0, Leu/chainfire/lumen/services/BackgroundService$m;->c:Leu/chainfire/lumen/services/BackgroundService$m;

    goto :goto_0

    :cond_2
    iget v1, p0, Leu/chainfire/lumen/services/BackgroundService;->C:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_3

    sget-object v0, Leu/chainfire/lumen/services/BackgroundService$m;->b:Leu/chainfire/lumen/services/BackgroundService$m;

    :cond_3
    :goto_0
    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->r:Leu/chainfire/lumen/services/BackgroundService$m;

    if-eq v0, p1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "LIGHT"

    invoke-static {v2, p1, v1}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->r:Leu/chainfire/lumen/services/BackgroundService$m;

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->K:Ljava/lang/Runnable;

    const-string v0, "evaluateFilter: updateSensor"

    invoke-direct {p0, p1, v0}, Leu/chainfire/lumen/services/BackgroundService;->h0(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic j(Leu/chainfire/lumen/services/BackgroundService;)Z
    .locals 0

    iget-boolean p0, p0, Leu/chainfire/lumen/services/BackgroundService;->k:Z

    return p0
.end method

.method static synthetic k(Leu/chainfire/lumen/services/BackgroundService;Z)Z
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/services/BackgroundService;->k:Z

    return p1
.end method

.method static synthetic l(Leu/chainfire/lumen/services/BackgroundService;)Z
    .locals 0

    iget-boolean p0, p0, Leu/chainfire/lumen/services/BackgroundService;->q:Z

    return p0
.end method

.method static synthetic m(Leu/chainfire/lumen/services/BackgroundService;Z)Z
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/services/BackgroundService;->q:Z

    return p1
.end method

.method static synthetic n(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$m;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->r:Leu/chainfire/lumen/services/BackgroundService$m;

    return-object p0
.end method

.method static synthetic o(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$m;)Leu/chainfire/lumen/services/BackgroundService$m;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->r:Leu/chainfire/lumen/services/BackgroundService$m;

    return-object p1
.end method

.method static synthetic p(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$l;Leu/chainfire/lumen/services/BackgroundService$l;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/services/BackgroundService;->W(Leu/chainfire/lumen/services/BackgroundService$l;Leu/chainfire/lumen/services/BackgroundService$l;)I

    move-result p0

    return p0
.end method

.method static synthetic q(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->L:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic r(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/services/BackgroundService;->g0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic s(Leu/chainfire/lumen/services/BackgroundService;Z)Z
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/services/BackgroundService;->n:Z

    return p1
.end method

.method static synthetic t(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->M:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic u(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/drivers/d;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->d:Leu/chainfire/lumen/drivers/d;

    return-object p0
.end method

.method static synthetic v(Leu/chainfire/lumen/services/BackgroundService;)Z
    .locals 0

    iget-boolean p0, p0, Leu/chainfire/lumen/services/BackgroundService;->i:Z

    return p0
.end method

.method static synthetic w(Leu/chainfire/lumen/services/BackgroundService;Z)Z
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/services/BackgroundService;->i:Z

    return p1
.end method

.method static synthetic x(Leu/chainfire/lumen/services/BackgroundService;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->o:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic y(Leu/chainfire/lumen/services/BackgroundService;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->p:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic z(Leu/chainfire/lumen/services/BackgroundService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/services/BackgroundService;->b:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->I:Leu/chainfire/lumen/drivers/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->I:Leu/chainfire/lumen/drivers/l;

    invoke-virtual {v0, p1}, Leu/chainfire/lumen/drivers/l;->k(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 8

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Service created"

    invoke-static {v2, v1}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CF.lumen BackgroundService Handler Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Leu/chainfire/lumen/services/BackgroundService;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->b:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->c:Landroid/os/Handler;

    invoke-static {p0}, Leu/chainfire/lumen/drivers/d;->x(Landroid/content/Context;)Leu/chainfire/lumen/drivers/d;

    move-result-object v1

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->d:Leu/chainfire/lumen/drivers/d;

    invoke-static {p0}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object v1

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    invoke-virtual {v1}, Leu/chainfire/lumen/a;->f()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->o:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->p:Landroid/hardware/Sensor;

    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->l:Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, v1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->m:Landroid/app/PendingIntent;

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object v1, v1, Leu/chainfire/lumen/a;->B:Leu/chainfire/lumen/a$h;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$h;->c()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Leu/chainfire/lumen/services/BackgroundService;->C:F

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object v1, v1, Leu/chainfire/lumen/a;->C:Leu/chainfire/lumen/a$h;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$h;->c()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Leu/chainfire/lumen/services/BackgroundService;->D:F

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object v1, v1, Leu/chainfire/lumen/a;->D:Leu/chainfire/lumen/a$h;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$h;->c()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Leu/chainfire/lumen/services/BackgroundService;->E:F

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Leu/chainfire/lumen/services/BackgroundService;->N:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Leu/chainfire/lumen/services/BackgroundService;->b:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v4, v3}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    iput-boolean v1, p0, Leu/chainfire/lumen/services/BackgroundService;->i:Z

    iget-boolean v1, p0, Leu/chainfire/lumen/services/BackgroundService;->i:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Leu/chainfire/lumen/services/BackgroundService;->j:J

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sget-object v2, Leu/chainfire/lumen/services/BackgroundService;->V:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Leu/chainfire/lumen/services/BackgroundService;->O:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Leu/chainfire/lumen/drivers/l;

    invoke-direct {v1, p0}, Leu/chainfire/lumen/drivers/l;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->I:Leu/chainfire/lumen/drivers/l;

    iget-boolean v1, p0, Leu/chainfire/lumen/services/BackgroundService;->i:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->I:Leu/chainfire/lumen/drivers/l;

    invoke-virtual {v1}, Leu/chainfire/lumen/drivers/l;->m()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->I:Leu/chainfire/lumen/drivers/l;

    invoke-virtual {v1}, Leu/chainfire/lumen/drivers/l;->l()V

    :goto_1
    new-instance v1, Leu/chainfire/lumen/services/a;

    invoke-direct {v1, p0}, Leu/chainfire/lumen/services/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->J:Leu/chainfire/lumen/services/a;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v1, v2, :cond_3

    new-instance v1, Landroid/app/NotificationChannel;

    const v2, 0x7f09001a

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const-string v6, "update"

    invoke-direct {v1, v6, v2, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->f:Landroid/app/NotificationChannel;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->f:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->f:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget-object v5, p0, Leu/chainfire/lumen/services/BackgroundService;->f:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v1, Landroid/app/NotificationChannel;

    const v5, 0x7f090018

    invoke-virtual {p0, v5}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const-string v7, "service"

    invoke-direct {v1, v7, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->g:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->g:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->g:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iget-object v5, p0, Leu/chainfire/lumen/services/BackgroundService;->g:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v1, Landroid/app/NotificationChannel;

    const v5, 0x7f090019

    invoke-virtual {p0, v5}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const-string v7, "service_low"

    invoke-direct {v1, v7, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->h:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->h:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->h:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService;->h:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_3
    invoke-direct {p0}, Leu/chainfire/lumen/services/BackgroundService;->e0()V

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->d:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/d;->D()Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Leu/chainfire/lumen/services/BackgroundService;->n:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Leu/chainfire/lumen/services/BackgroundService;->c0()V

    :cond_4
    new-instance v0, Leu/chainfire/lumen/services/BackgroundService$c;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/services/BackgroundService$c;-><init>(Leu/chainfire/lumen/services/BackgroundService;)V

    invoke-direct {p0, v0}, Leu/chainfire/lumen/services/BackgroundService;->g0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->O:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->N:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    :goto_0
    iget-boolean v0, p0, Leu/chainfire/lumen/services/BackgroundService;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->o:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    invoke-virtual {v0}, Leu/chainfire/lumen/a;->f()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->I:Leu/chainfire/lumen/drivers/l;

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/l;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->I:Leu/chainfire/lumen/drivers/l;

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->J:Leu/chainfire/lumen/services/a;

    invoke-virtual {v0}, Leu/chainfire/lumen/services/a;->b()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Service destroyed"

    invoke-static {v1, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/services/BackgroundService;->i0(F)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Leu/chainfire/lumen/services/BackgroundService;->Z()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Leu/chainfire/lumen/services/BackgroundService$h;

    invoke-direct {p1, p0, p2}, Leu/chainfire/lumen/services/BackgroundService$h;-><init>(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Leu/chainfire/lumen/services/BackgroundService;->g0(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->d:Leu/chainfire/lumen/a$c;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    invoke-virtual {p1}, Leu/chainfire/lumen/a;->j()V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->Q:Leu/chainfire/lumen/a$c;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/a;->i(Z)V

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->B:Leu/chainfire/lumen/a$h;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->B:Leu/chainfire/lumen/a$h;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$h;->c()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Leu/chainfire/lumen/services/BackgroundService;->C:F

    iget p1, p0, Leu/chainfire/lumen/services/BackgroundService;->s:F

    invoke-direct {p0, p1}, Leu/chainfire/lumen/services/BackgroundService;->i0(F)V

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->C:Leu/chainfire/lumen/a$h;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->C:Leu/chainfire/lumen/a$h;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$h;->c()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Leu/chainfire/lumen/services/BackgroundService;->D:F

    iget p1, p0, Leu/chainfire/lumen/services/BackgroundService;->s:F

    invoke-direct {p0, p1}, Leu/chainfire/lumen/services/BackgroundService;->i0(F)V

    :cond_4
    if-eqz p2, :cond_5

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->D:Leu/chainfire/lumen/a$h;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->D:Leu/chainfire/lumen/a$h;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$h;->c()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Leu/chainfire/lumen/services/BackgroundService;->E:F

    iget p1, p0, Leu/chainfire/lumen/services/BackgroundService;->s:F

    invoke-direct {p0, p1}, Leu/chainfire/lumen/services/BackgroundService;->i0(F)V

    :cond_5
    if-eqz p2, :cond_7

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->I:Leu/chainfire/lumen/a$h;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->J:Leu/chainfire/lumen/a$h;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->K:Leu/chainfire/lumen/a$h;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->L:Leu/chainfire/lumen/a$h;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->d:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {p1}, Leu/chainfire/lumen/drivers/d;->F()V

    :cond_7
    if-eqz p2, :cond_8

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->d:Leu/chainfire/lumen/drivers/d;

    const-string v0, "onSharedPreferencesChanged"

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/drivers/d;->E(Ljava/lang/String;)V

    :cond_8
    if-eqz p2, :cond_9

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->i:Leu/chainfire/lumen/a$g;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->j:Leu/chainfire/lumen/a$g;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->k:Leu/chainfire/lumen/a$c;

    iget-object p1, p1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_9
    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->k:Leu/chainfire/lumen/a$c;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$c;->c()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->J:Leu/chainfire/lumen/services/a;

    invoke-virtual {p1}, Leu/chainfire/lumen/services/a;->a()V

    goto :goto_0

    :cond_a
    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->J:Leu/chainfire/lumen/services/a;

    invoke-virtual {p1}, Leu/chainfire/lumen/services/a;->b()V

    :cond_b
    :goto_0
    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->d:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {p1}, Leu/chainfire/lumen/drivers/d;->D()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Leu/chainfire/lumen/services/BackgroundService;->c0()V

    goto :goto_1

    :cond_c
    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->K:Ljava/lang/Runnable;

    const-string p2, "evaluateFilter: onSharedPreferencesChanged"

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/services/BackgroundService;->h0(Ljava/lang/Runnable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    iget-boolean p2, p0, Leu/chainfire/lumen/services/BackgroundService;->n:Z

    const/4 p3, 0x1

    if-nez p2, :cond_9

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "onStartCommand"

    invoke-static {v1, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    const-string v0, "eu.chainfire.lumen.EXTRA_REASON"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_2

    if-ne v0, p3, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    invoke-virtual {v0}, Leu/chainfire/lumen/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService;->e:Leu/chainfire/lumen/a;

    iget-object v0, v0, Leu/chainfire/lumen/a;->G:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Leu/chainfire/lumen/services/BackgroundService;->c0()V

    const/4 p1, 0x2

    return p1

    :cond_1
    iput-boolean p3, p0, Leu/chainfire/lumen/services/BackgroundService;->v:Z

    :cond_2
    const-string v0, "eu.chainfire.lumen.EXTRA_TEMP_DISABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-wide/32 v2, 0x36ee80

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Leu/chainfire/lumen/services/BackgroundService;->y:J

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090124

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iput-wide v4, p0, Leu/chainfire/lumen/services/BackgroundService;->y:J

    :cond_4
    :goto_0
    const-string v0, "eu.chainfire.lumen.EXTRA_TEMP_WAKE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Leu/chainfire/lumen/services/BackgroundService;->A:J

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090126

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    iput-wide v4, p0, Leu/chainfire/lumen/services/BackgroundService;->A:J

    :goto_1
    iput-boolean p3, p0, Leu/chainfire/lumen/services/BackgroundService;->B:Z

    :cond_6
    const-string v0, "eu.chainfire.lumen.EXTRA_TEMP_SLEEP"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    add-long/2addr p1, v2

    iput-wide p1, p0, Leu/chainfire/lumen/services/BackgroundService;->z:J

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f090125

    invoke-virtual {p0, p2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_7
    iput-wide v4, p0, Leu/chainfire/lumen/services/BackgroundService;->z:J

    :cond_8
    :goto_2
    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService;->K:Ljava/lang/Runnable;

    const-string p2, "evaluateFilter: onStartCommand"

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/services/BackgroundService;->h0(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-boolean p1, p0, Leu/chainfire/lumen/services/BackgroundService;->v:Z

    if-eqz p1, :cond_9

    new-instance p1, Leu/chainfire/lumen/services/BackgroundService$d;

    invoke-direct {p1, p0}, Leu/chainfire/lumen/services/BackgroundService$d;-><init>(Leu/chainfire/lumen/services/BackgroundService;)V

    invoke-direct {p0, p1}, Leu/chainfire/lumen/services/BackgroundService;->g0(Ljava/lang/Runnable;)V

    :cond_9
    return p3
.end method
