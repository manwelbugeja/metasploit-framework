.class public Leu/chainfire/lumen/a$h;
.super Leu/chainfire/lumen/a$j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public d:I


# direct methods
.method public constructor <init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Leu/chainfire/lumen/a$j;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Leu/chainfire/lumen/a$h;->d:I

    iput p4, p0, Leu/chainfire/lumen/a$h;->d:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/a$j;->a:Leu/chainfire/lumen/a;

    iget-object v0, v0, Leu/chainfire/lumen/a;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget v2, p0, Leu/chainfire/lumen/a$h;->d:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 2

    invoke-virtual {p0}, Leu/chainfire/lumen/a$j;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Leu/chainfire/lumen/a$j;->a()V

    return-void
.end method
