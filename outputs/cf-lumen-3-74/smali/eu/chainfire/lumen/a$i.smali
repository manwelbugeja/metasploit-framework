.class public Leu/chainfire/lumen/a$i;
.super Leu/chainfire/lumen/a$j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public d:J


# direct methods
.method public constructor <init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Leu/chainfire/lumen/a$j;-><init>(Leu/chainfire/lumen/a;Leu/chainfire/lumen/a;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Leu/chainfire/lumen/a$i;->d:J

    iput-wide p4, p0, Leu/chainfire/lumen/a$i;->d:J

    return-void
.end method


# virtual methods
.method public c()J
    .locals 4

    iget-object v0, p0, Leu/chainfire/lumen/a$j;->a:Leu/chainfire/lumen/a;

    iget-object v0, v0, Leu/chainfire/lumen/a;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    iget-wide v2, p0, Leu/chainfire/lumen/a$i;->d:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)V
    .locals 2

    invoke-virtual {p0}, Leu/chainfire/lumen/a$j;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Leu/chainfire/lumen/a$j;->a()V

    return-void
.end method
