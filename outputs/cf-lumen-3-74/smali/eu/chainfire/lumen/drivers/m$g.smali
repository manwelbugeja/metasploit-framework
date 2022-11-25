.class public final enum Leu/chainfire/lumen/drivers/m$g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/drivers/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leu/chainfire/lumen/drivers/m$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Leu/chainfire/lumen/drivers/m$g;

.field public static final enum b:Leu/chainfire/lumen/drivers/m$g;

.field public static final enum c:Leu/chainfire/lumen/drivers/m$g;

.field private static final synthetic d:[Leu/chainfire/lumen/drivers/m$g;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Leu/chainfire/lumen/drivers/m$g;

    const-string v1, "ANDROID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leu/chainfire/lumen/drivers/m$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/lumen/drivers/m$g;->a:Leu/chainfire/lumen/drivers/m$g;

    new-instance v1, Leu/chainfire/lumen/drivers/m$g;

    const-string v3, "ANDROID_AND_INJECTED_ANTI_FLICKER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leu/chainfire/lumen/drivers/m$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leu/chainfire/lumen/drivers/m$g;->b:Leu/chainfire/lumen/drivers/m$g;

    new-instance v3, Leu/chainfire/lumen/drivers/m$g;

    const-string v5, "INJECTED_RENDER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leu/chainfire/lumen/drivers/m$g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leu/chainfire/lumen/drivers/m$g;->c:Leu/chainfire/lumen/drivers/m$g;

    const/4 v5, 0x3

    new-array v5, v5, [Leu/chainfire/lumen/drivers/m$g;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Leu/chainfire/lumen/drivers/m$g;->d:[Leu/chainfire/lumen/drivers/m$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Leu/chainfire/lumen/drivers/m$g;
    .locals 1

    const-class v0, Leu/chainfire/lumen/drivers/m$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leu/chainfire/lumen/drivers/m$g;

    return-object p0
.end method

.method public static values()[Leu/chainfire/lumen/drivers/m$g;
    .locals 1

    sget-object v0, Leu/chainfire/lumen/drivers/m$g;->d:[Leu/chainfire/lumen/drivers/m$g;

    invoke-virtual {v0}, [Leu/chainfire/lumen/drivers/m$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leu/chainfire/lumen/drivers/m$g;

    return-object v0
.end method
