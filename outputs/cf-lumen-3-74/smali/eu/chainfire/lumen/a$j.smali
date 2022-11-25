.class public Leu/chainfire/lumen/a$j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field protected a:Leu/chainfire/lumen/a;

.field protected b:Landroid/content/SharedPreferences$Editor;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Leu/chainfire/lumen/a$j;->a:Leu/chainfire/lumen/a;

    iput-object p1, p0, Leu/chainfire/lumen/a$j;->b:Landroid/content/SharedPreferences$Editor;

    const-string p1, ""

    iput-object p1, p0, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iput-object p2, p0, Leu/chainfire/lumen/a$j;->a:Leu/chainfire/lumen/a;

    iput-object p3, p0, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/a$j;->a:Leu/chainfire/lumen/a;

    iget-object v0, v0, Leu/chainfire/lumen/a;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/a$j;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/a$j;->b:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method protected b()Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    iget-object v0, p0, Leu/chainfire/lumen/a$j;->a:Leu/chainfire/lumen/a;

    iget-object v1, v0, Leu/chainfire/lumen/a;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/a$j;->b:Landroid/content/SharedPreferences$Editor;

    return-object v1

    :cond_0
    iget-object v0, v0, Leu/chainfire/lumen/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/a$j;->b:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method
