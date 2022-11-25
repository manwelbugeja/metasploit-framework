.class public Leu/chainfire/lumen/a$f;
.super Leu/chainfire/lumen/a$j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public d:Leu/chainfire/lumen/a$d;


# direct methods
.method public constructor <init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;Leu/chainfire/lumen/a$d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Leu/chainfire/lumen/a$j;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Leu/chainfire/lumen/a$f;->d:Leu/chainfire/lumen/a$d;

    iput-object p4, p0, Leu/chainfire/lumen/a$f;->d:Leu/chainfire/lumen/a$d;

    return-void
.end method


# virtual methods
.method public c()Leu/chainfire/lumen/a$d;
    .locals 4

    new-instance v0, Leu/chainfire/lumen/a$d;

    iget-object v1, p0, Leu/chainfire/lumen/a$j;->a:Leu/chainfire/lumen/a;

    iget-object v1, v1, Leu/chainfire/lumen/a;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-object v3, p0, Leu/chainfire/lumen/a$f;->d:Leu/chainfire/lumen/a$d;

    invoke-virtual {v3}, Leu/chainfire/lumen/a$d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Leu/chainfire/lumen/a$d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Leu/chainfire/lumen/a$d;)V
    .locals 2

    invoke-virtual {p0}, Leu/chainfire/lumen/a$j;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Leu/chainfire/lumen/a$j;->a()V

    return-void
.end method
