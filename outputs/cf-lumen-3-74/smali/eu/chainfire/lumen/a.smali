.class public Leu/chainfire/lumen/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/lumen/a$b;,
        Leu/chainfire/lumen/a$f;,
        Leu/chainfire/lumen/a$d;,
        Leu/chainfire/lumen/a$e;,
        Leu/chainfire/lumen/a$l;,
        Leu/chainfire/lumen/a$k;,
        Leu/chainfire/lumen/a$g;,
        Leu/chainfire/lumen/a$i;,
        Leu/chainfire/lumen/a$h;,
        Leu/chainfire/lumen/a$c;,
        Leu/chainfire/lumen/a$j;
    }
.end annotation


# static fields
.field protected static T:Leu/chainfire/lumen/a;


# instance fields
.field public final A:Leu/chainfire/lumen/a$c;

.field public final B:Leu/chainfire/lumen/a$h;

.field public final C:Leu/chainfire/lumen/a$h;

.field public final D:Leu/chainfire/lumen/a$h;

.field public final E:Leu/chainfire/lumen/a$k;

.field public final F:Leu/chainfire/lumen/a$k;

.field public final G:Leu/chainfire/lumen/a$c;

.field public final H:Leu/chainfire/lumen/a$k;

.field public final I:Leu/chainfire/lumen/a$h;

.field public final J:Leu/chainfire/lumen/a$h;

.field public final K:Leu/chainfire/lumen/a$h;

.field public final L:Leu/chainfire/lumen/a$h;

.field public final M:Leu/chainfire/lumen/a$k;

.field public final N:Leu/chainfire/lumen/a$k;

.field public final O:Leu/chainfire/lumen/a$c;

.field public final P:Leu/chainfire/lumen/a$c;

.field public final Q:Leu/chainfire/lumen/a$c;

.field private volatile R:Ljava/lang/Boolean;

.field private volatile S:Ljava/lang/Boolean;

.field protected a:Landroid/content/SharedPreferences;

.field protected b:Landroid/content/SharedPreferences$Editor;

.field protected c:Landroid/content/Context;

.field public final d:Leu/chainfire/lumen/a$c;

.field public final e:Leu/chainfire/lumen/a$c;

.field public final f:Leu/chainfire/lumen/a$c;

.field public final g:Leu/chainfire/lumen/a$i;

.field public final h:Leu/chainfire/lumen/a$c;

.field public final i:Leu/chainfire/lumen/a$g;

.field public final j:Leu/chainfire/lumen/a$g;

.field public final k:Leu/chainfire/lumen/a$c;

.field public final l:Leu/chainfire/lumen/a$f;

.field public final m:Leu/chainfire/lumen/a$f;

.field public final n:Leu/chainfire/lumen/a$f;

.field public final o:Leu/chainfire/lumen/a$f;

.field public final p:Leu/chainfire/lumen/a$f;

.field public final q:Leu/chainfire/lumen/a$f;

.field public final r:Leu/chainfire/lumen/a$f;

.field public final s:Leu/chainfire/lumen/a$f;

.field public final t:Leu/chainfire/lumen/a$f;

.field public final u:Leu/chainfire/lumen/a$l;

.field public final v:Leu/chainfire/lumen/a$l;

.field public final w:Leu/chainfire/lumen/a$c;

.field public final x:Leu/chainfire/lumen/a$c;

.field public final y:Leu/chainfire/lumen/a$c;

.field public final z:Leu/chainfire/lumen/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/a;->a:Landroid/content/SharedPreferences;

    iput-object v0, p0, Leu/chainfire/lumen/a;->b:Landroid/content/SharedPreferences$Editor;

    iput-object v0, p0, Leu/chainfire/lumen/a;->c:Landroid/content/Context;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "purchased"

    const/4 v3, 0x0

    invoke-direct {v1, p0, p0, v2, v3}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->d:Leu/chainfire/lumen/a$c;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "shown_welcome"

    invoke-direct {v1, p0, p0, v2, v3}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->e:Leu/chainfire/lumen/a$c;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "shown_follow"

    invoke-direct {v1, p0, p0, v2, v3}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->f:Leu/chainfire/lumen/a$c;

    new-instance v1, Leu/chainfire/lumen/a$i;

    const-string v7, "shown_purchase"

    const-wide/16 v8, 0x0

    move-object v4, v1

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Leu/chainfire/lumen/a$i;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;J)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->g:Leu/chainfire/lumen/a$i;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "location_have"

    invoke-direct {v1, p0, p0, v2, v3}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    new-instance v1, Leu/chainfire/lumen/a$g;

    const-string v2, "location_latitude"

    const/4 v4, 0x0

    invoke-direct {v1, p0, p0, v2, v4}, Leu/chainfire/lumen/a$g;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;F)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->i:Leu/chainfire/lumen/a$g;

    new-instance v1, Leu/chainfire/lumen/a$g;

    const-string v2, "location_longitude"

    invoke-direct {v1, p0, p0, v2, v4}, Leu/chainfire/lumen/a$g;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;F)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->j:Leu/chainfire/lumen/a$g;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "location_follow"

    const/4 v4, 0x1

    invoke-direct {v1, p0, p0, v2, v4}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->k:Leu/chainfire/lumen/a$c;

    new-instance v1, Leu/chainfire/lumen/a$f;

    new-instance v2, Leu/chainfire/lumen/a$d;

    sget-object v5, Leu/chainfire/lumen/a$e;->e:Leu/chainfire/lumen/a$e;

    invoke-direct {v2, v5}, Leu/chainfire/lumen/a$d;-><init>(Leu/chainfire/lumen/a$e;)V

    const-string v5, "filter_mode"

    invoke-direct {v1, p0, p0, v5, v2}, Leu/chainfire/lumen/a$f;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Leu/chainfire/lumen/a$d;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->l:Leu/chainfire/lumen/a$f;

    new-instance v1, Leu/chainfire/lumen/a$f;

    new-instance v2, Leu/chainfire/lumen/a$d;

    sget-object v5, Leu/chainfire/lumen/a$e;->d:Leu/chainfire/lumen/a$e;

    invoke-direct {v2, v5}, Leu/chainfire/lumen/a$d;-><init>(Leu/chainfire/lumen/a$e;)V

    const-string v6, "filter_last"

    invoke-direct {v1, p0, p0, v6, v2}, Leu/chainfire/lumen/a$f;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Leu/chainfire/lumen/a$d;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->m:Leu/chainfire/lumen/a$f;

    new-instance v1, Leu/chainfire/lumen/a$f;

    new-instance v2, Leu/chainfire/lumen/a$d;

    invoke-direct {v2, v5}, Leu/chainfire/lumen/a$d;-><init>(Leu/chainfire/lumen/a$e;)V

    const-string v6, "filter_current_auto"

    invoke-direct {v1, p0, p0, v6, v2}, Leu/chainfire/lumen/a$f;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Leu/chainfire/lumen/a$d;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->n:Leu/chainfire/lumen/a$f;

    new-instance v1, Leu/chainfire/lumen/a$f;

    new-instance v2, Leu/chainfire/lumen/a$d;

    invoke-direct {v2, v5}, Leu/chainfire/lumen/a$d;-><init>(Leu/chainfire/lumen/a$e;)V

    const-string v5, "filter_day"

    invoke-direct {v1, p0, p0, v5, v2}, Leu/chainfire/lumen/a$f;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Leu/chainfire/lumen/a$d;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->o:Leu/chainfire/lumen/a$f;

    new-instance v1, Leu/chainfire/lumen/a$f;

    new-instance v2, Leu/chainfire/lumen/a$d;

    const/16 v5, 0xd48

    invoke-direct {v2, v5}, Leu/chainfire/lumen/a$d;-><init>(I)V

    const-string v6, "filter_sundown"

    invoke-direct {v1, p0, p0, v6, v2}, Leu/chainfire/lumen/a$f;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Leu/chainfire/lumen/a$d;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->p:Leu/chainfire/lumen/a$f;

    new-instance v1, Leu/chainfire/lumen/a$f;

    new-instance v2, Leu/chainfire/lumen/a$d;

    sget-object v6, Leu/chainfire/lumen/a$e;->f:Leu/chainfire/lumen/a$e;

    invoke-direct {v2, v6}, Leu/chainfire/lumen/a$d;-><init>(Leu/chainfire/lumen/a$e;)V

    const-string v6, "filter_sleep"

    invoke-direct {v1, p0, p0, v6, v2}, Leu/chainfire/lumen/a$f;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Leu/chainfire/lumen/a$d;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->q:Leu/chainfire/lumen/a$f;

    new-instance v1, Leu/chainfire/lumen/a$f;

    new-instance v2, Leu/chainfire/lumen/a$d;

    invoke-direct {v2, v5}, Leu/chainfire/lumen/a$d;-><init>(I)V

    const-string v5, "filter_store_kelvin"

    invoke-direct {v1, p0, p0, v5, v2}, Leu/chainfire/lumen/a$f;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Leu/chainfire/lumen/a$d;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->r:Leu/chainfire/lumen/a$f;

    new-instance v1, Leu/chainfire/lumen/a$f;

    new-instance v2, Leu/chainfire/lumen/a$d;

    const/16 v5, 0xff

    invoke-direct {v2, v5, v5, v5}, Leu/chainfire/lumen/a$d;-><init>(III)V

    const-string v5, "filter_store_rgba"

    invoke-direct {v1, p0, p0, v5, v2}, Leu/chainfire/lumen/a$f;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Leu/chainfire/lumen/a$d;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->s:Leu/chainfire/lumen/a$f;

    new-instance v1, Leu/chainfire/lumen/a$f;

    new-instance v2, Leu/chainfire/lumen/a$d;

    sget-object v5, Leu/chainfire/lumen/a$e;->k:Leu/chainfire/lumen/a$e;

    invoke-direct {v2, v5}, Leu/chainfire/lumen/a$d;-><init>(Leu/chainfire/lumen/a$e;)V

    const-string v5, "filter_store_saturation"

    invoke-direct {v1, p0, p0, v5, v2}, Leu/chainfire/lumen/a$f;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Leu/chainfire/lumen/a$d;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->t:Leu/chainfire/lumen/a$f;

    new-instance v1, Leu/chainfire/lumen/a$l;

    const-string v2, "sleep_start"

    const/16 v5, 0x3c

    invoke-direct {v1, p0, p0, v2, v5}, Leu/chainfire/lumen/a$l;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;I)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->u:Leu/chainfire/lumen/a$l;

    new-instance v1, Leu/chainfire/lumen/a$l;

    const-string v2, "sleep_end"

    const/16 v5, 0x12c

    invoke-direct {v1, p0, p0, v2, v5}, Leu/chainfire/lumen/a$l;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;I)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->v:Leu/chainfire/lumen/a$l;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "sleep_wake_alarm"

    invoke-direct {v1, p0, p0, v2, v4}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->w:Leu/chainfire/lumen/a$c;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "dark_sleep"

    invoke-direct {v1, p0, p0, v2, v3}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->x:Leu/chainfire/lumen/a$c;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "dark_sleep_sundown_only"

    invoke-direct {v1, p0, p0, v2, v4}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->y:Leu/chainfire/lumen/a$c;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "wake_sundown"

    invoke-direct {v1, p0, p0, v2, v3}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->z:Leu/chainfire/lumen/a$c;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "bright_day"

    invoke-direct {v1, p0, p0, v2, v3}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->A:Leu/chainfire/lumen/a$c;

    new-instance v1, Leu/chainfire/lumen/a$h;

    const-string v2, "threshold_dark"

    invoke-direct {v1, p0, p0, v2, v3}, Leu/chainfire/lumen/a$h;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;I)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->B:Leu/chainfire/lumen/a$h;

    new-instance v1, Leu/chainfire/lumen/a$h;

    const-string v2, "threshold_wake"

    const/16 v6, 0xa

    invoke-direct {v1, p0, p0, v2, v6}, Leu/chainfire/lumen/a$h;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;I)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->C:Leu/chainfire/lumen/a$h;

    new-instance v1, Leu/chainfire/lumen/a$h;

    const-string v2, "threshold_bright"

    const/16 v6, 0xfa

    invoke-direct {v1, p0, p0, v2, v6}, Leu/chainfire/lumen/a$h;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;I)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->D:Leu/chainfire/lumen/a$h;

    new-instance v1, Leu/chainfire/lumen/a$k;

    const-string v2, "notification_mode"

    const-string v6, "always"

    invoke-direct {v1, p0, p0, v2, v6}, Leu/chainfire/lumen/a$k;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->E:Leu/chainfire/lumen/a$k;

    new-instance v1, Leu/chainfire/lumen/a$k;

    const-string v2, "notification_icon_mode"

    const-string v6, "demand"

    invoke-direct {v1, p0, p0, v2, v6}, Leu/chainfire/lumen/a$k;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->F:Leu/chainfire/lumen/a$k;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "launch_at_boot"

    invoke-direct {v1, p0, p0, v2, v4}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->G:Leu/chainfire/lumen/a$c;

    new-instance v1, Leu/chainfire/lumen/a$k;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-ge v2, v4, :cond_0

    const-string v2, "light_dab"

    goto :goto_0

    :cond_0
    const-string v2, "material_light_dab"

    :goto_0
    const-string v4, "theme"

    invoke-direct {v1, p0, p0, v4, v2}, Leu/chainfire/lumen/a$k;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->H:Leu/chainfire/lumen/a$k;

    new-instance v1, Leu/chainfire/lumen/a$h;

    const/16 v2, 0x78

    const-string v4, "fade_sunrise"

    invoke-direct {v1, p0, p0, v4, v2}, Leu/chainfire/lumen/a$h;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;I)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->I:Leu/chainfire/lumen/a$h;

    new-instance v1, Leu/chainfire/lumen/a$h;

    const-string v2, "fade_sunset"

    invoke-direct {v1, p0, p0, v2, v5}, Leu/chainfire/lumen/a$h;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;I)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->J:Leu/chainfire/lumen/a$h;

    new-instance v1, Leu/chainfire/lumen/a$h;

    const/16 v2, 0x1e

    const-string v4, "fade_sleep"

    invoke-direct {v1, p0, p0, v4, v2}, Leu/chainfire/lumen/a$h;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;I)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->K:Leu/chainfire/lumen/a$h;

    new-instance v1, Leu/chainfire/lumen/a$h;

    const/4 v2, 0x5

    const-string v4, "fade_sensor"

    invoke-direct {v1, p0, p0, v4, v2}, Leu/chainfire/lumen/a$h;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;I)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->L:Leu/chainfire/lumen/a$h;

    new-instance v1, Leu/chainfire/lumen/a$k;

    const-string v2, "driver"

    const-string v4, "cflumen"

    invoke-direct {v1, p0, p0, v2, v4}, Leu/chainfire/lumen/a$k;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    new-instance v1, Leu/chainfire/lumen/a$k;

    const-string v2, "driver_cflumen_mode"

    const-string v4, "compatibility"

    invoke-direct {v1, p0, p0, v2, v4}, Leu/chainfire/lumen/a$k;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->N:Leu/chainfire/lumen/a$k;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "kcal_gamma"

    invoke-direct {v1, p0, p0, v2, v3}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->O:Leu/chainfire/lumen/a$c;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "temp_mode"

    invoke-direct {v1, p0, p0, v2, v3}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->P:Leu/chainfire/lumen/a$c;

    new-instance v1, Leu/chainfire/lumen/a$c;

    const-string v2, "freeload"

    invoke-direct {v1, p0, p0, v2, v3}, Leu/chainfire/lumen/a$c;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Z)V

    iput-object v1, p0, Leu/chainfire/lumen/a;->Q:Leu/chainfire/lumen/a$c;

    iput-object v0, p0, Leu/chainfire/lumen/a;->R:Ljava/lang/Boolean;

    iput-object v0, p0, Leu/chainfire/lumen/a;->S:Ljava/lang/Boolean;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/a;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/a;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;Leu/chainfire/lumen/a$d;ZZ)Ljava/lang/String;
    .locals 8

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v0

    sget-object v1, Leu/chainfire/lumen/a$e;->m:Leu/chainfire/lumen/a$e;

    const/4 v2, 0x2

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, ""

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f090092

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v6

    invoke-virtual {v6, p0}, Leu/chainfire/lumen/a$e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v0

    sget-object v1, Leu/chainfire/lumen/a$e;->n:Leu/chainfire/lumen/a$e;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f090093

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v7

    invoke-virtual {v7, p0}, Leu/chainfire/lumen/a$e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->i()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->f()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->c()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p0, v1, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f090091

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v6

    invoke-virtual {v6, p0}, Leu/chainfire/lumen/a$e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object p2

    sget-object p3, Leu/chainfire/lumen/a$e;->d:Leu/chainfire/lumen/a$e;

    if-eq p2, p3, :cond_4

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object p2

    sget-object p3, Leu/chainfire/lumen/a$e;->e:Leu/chainfire/lumen/a$e;

    if-eq p2, p3, :cond_4

    :cond_2
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->d()I

    move-result p2

    const/4 p3, -0x3

    if-eq p2, p3, :cond_4

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->d()I

    move-result p2

    const/4 p3, -0x2

    if-eq p2, p3, :cond_4

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->d()I

    move-result p2

    const/4 p3, -0x1

    const/16 v1, 0xa

    if-ne p2, p3, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const p2, 0x7f090090

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const p3, 0x7f09008f

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->d()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static b()Leu/chainfire/lumen/a$b;
    .locals 9

    sget-object v0, Leu/chainfire/lumen/a$b;->h:Leu/chainfire/lumen/a$b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    if-eqz v2, :cond_3

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    return-object v0

    :cond_4
    sget-object v2, Leu/chainfire/lumen/a$b;->h:Leu/chainfire/lumen/a$b;

    const/4 v4, 0x1

    if-ne v0, v2, :cond_8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "mip"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Leu/chainfire/lumen/a$b;->f:Leu/chainfire/lumen/a$b;

    :cond_5
    const-string v2, "mips64"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_8

    aget-object v6, v2, v5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v0, Leu/chainfire/lumen/a$b;->g:Leu/chainfire/lumen/a$b;

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    sget-object v2, Leu/chainfire/lumen/a$b;->h:Leu/chainfire/lumen/a$b;

    if-ne v0, v2, :cond_c

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "x86"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Leu/chainfire/lumen/a$b;->d:Leu/chainfire/lumen/a$b;

    :cond_9
    const-string v2, "x86_64"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_c

    aget-object v6, v2, v5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v0, Leu/chainfire/lumen/a$b;->e:Leu/chainfire/lumen/a$b;

    goto :goto_5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    sget-object v2, Leu/chainfire/lumen/a$b;->h:Leu/chainfire/lumen/a$b;

    if-ne v0, v2, :cond_13

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "arm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v0, Leu/chainfire/lumen/a$b;->a:Leu/chainfire/lumen/a$b;

    :cond_d
    const-string v2, "armeabi-v7a"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_10

    aget-object v6, v2, v5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    sget-object v0, Leu/chainfire/lumen/a$b;->b:Leu/chainfire/lumen/a$b;

    goto :goto_7

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_10
    const-string v2, "arm64-v8a"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    :goto_8
    if-ge v3, v4, :cond_13

    aget-object v5, v2, v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_11
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    sget-object v0, Leu/chainfire/lumen/a$b;->c:Leu/chainfire/lumen/a$b;

    goto :goto_9

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_13
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Leu/chainfire/lumen/a;
    .locals 1

    sget-object v0, Leu/chainfire/lumen/a;->T:Leu/chainfire/lumen/a;

    if-nez v0, :cond_0

    new-instance v0, Leu/chainfire/lumen/a;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Leu/chainfire/lumen/a;->T:Leu/chainfire/lumen/a;

    :cond_0
    sget-object p0, Leu/chainfire/lumen/a;->T:Leu/chainfire/lumen/a;

    return-object p0
.end method


# virtual methods
.method public c()Leu/chainfire/lumen/drivers/c;
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Leu/chainfire/lumen/a;->d(Ljava/lang/String;)Leu/chainfire/lumen/drivers/c;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Leu/chainfire/lumen/drivers/c;
    .locals 1

    const-string v0, "rootless"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/a;->c:Landroid/content/Context;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/k;->p(Landroid/content/Context;)Leu/chainfire/lumen/drivers/k;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "kcal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Leu/chainfire/lumen/a;->c:Landroid/content/Context;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/h;->o(Landroid/content/Context;)Leu/chainfire/lumen/drivers/h;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "pccrgb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Leu/chainfire/lumen/a;->c:Landroid/content/Context;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j;->o(Landroid/content/Context;)Leu/chainfire/lumen/drivers/j;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Leu/chainfire/lumen/a;->c:Landroid/content/Context;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/m;->L(Landroid/content/Context;)Leu/chainfire/lumen/drivers/m;

    move-result-object p1

    return-object p1
.end method

.method public f()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/a;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/a;->R:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Leu/chainfire/lumen/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/a;->Q:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/a;->R:Ljava/lang/Boolean;

    :cond_2
    iget-object v0, p0, Leu/chainfire/lumen/a;->R:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 5

    iget-object v0, p0, Leu/chainfire/lumen/a;->S:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    iget-object v0, p0, Leu/chainfire/lumen/a;->d:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    iget-object v1, p0, Leu/chainfire/lumen/a;->c:Landroid/content/Context;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-string v4, "com.android.vending"

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :try_start_1
    const-string v4, "eu.chainfire.cf3d.pro"

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    nop

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    :try_start_2
    const-string v4, "eu.chainfire.lumen.pro"

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :catch_2
    :cond_4
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/a;->S:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Leu/chainfire/lumen/a;->S:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Leu/chainfire/lumen/a;->R:Ljava/lang/Boolean;

    return-void
.end method

.method public j()V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Leu/chainfire/lumen/a;->S:Ljava/lang/Boolean;

    iget-object v0, p0, Leu/chainfire/lumen/a;->d:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/a;->d:Leu/chainfire/lumen/a$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/lumen/a$c;->d(Z)V

    :cond_0
    return-void
.end method
