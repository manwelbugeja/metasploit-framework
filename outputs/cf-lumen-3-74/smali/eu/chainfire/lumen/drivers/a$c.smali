.class final Leu/chainfire/lumen/drivers/a$c;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/drivers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/net/Uri;

.field private final d:Landroid/net/Uri;

.field private final e:Landroid/net/Uri;

.field private final f:Landroid/net/Uri;

.field private final g:Landroid/net/Uri;

.field private final h:Landroid/net/Uri;

.field private final i:Landroid/net/Uri;

.field private final j:Landroid/net/Uri;

.field final synthetic k:Leu/chainfire/lumen/drivers/a;


# direct methods
.method public constructor <init>(Leu/chainfire/lumen/drivers/a;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/a$c;->k:Leu/chainfire/lumen/drivers/a;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "accessibility_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/drivers/a$c;->a:Landroid/net/Uri;

    const-string p1, "touch_exploration_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/drivers/a$c;->b:Landroid/net/Uri;

    const-string p1, "accessibility_display_magnification_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/drivers/a$c;->c:Landroid/net/Uri;

    const-string p1, "enabled_accessibility_services"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/drivers/a$c;->d:Landroid/net/Uri;

    const-string p1, "touch_exploration_granted_accessibility_services"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/drivers/a$c;->e:Landroid/net/Uri;

    const-string p1, "accessibility_script_injection"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/drivers/a$c;->f:Landroid/net/Uri;

    const-string p1, "accessibility_display_inversion_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/drivers/a$c;->g:Landroid/net/Uri;

    const-string p1, "accessibility_display_daltonizer_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/drivers/a$c;->h:Landroid/net/Uri;

    const-string p1, "accessibility_display_daltonizer"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/drivers/a$c;->i:Landroid/net/Uri;

    const-string p1, "high_text_contrast_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/drivers/a$c;->j:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentResolver;)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a$c;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a$c;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a$c;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a$c;->d:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a$c;->e:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a$c;->f:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a$c;->g:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a$c;->h:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a$c;->i:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/a$c;->j:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public b(Landroid/content/ContentResolver;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "ACCESS"

    const-string v0, "change[%s]"

    invoke-static {p2, v0, p1}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Leu/chainfire/lumen/drivers/a$c;->k:Leu/chainfire/lumen/drivers/a;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/a;->a(Leu/chainfire/lumen/drivers/a;)Leu/chainfire/lumen/drivers/a$d;

    move-result-object p1

    invoke-interface {p1}, Leu/chainfire/lumen/drivers/a$d;->a()V

    return-void
.end method
