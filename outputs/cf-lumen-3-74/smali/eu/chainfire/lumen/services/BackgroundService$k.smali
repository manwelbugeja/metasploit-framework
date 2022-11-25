.class final enum Leu/chainfire/lumen/services/BackgroundService$k;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/services/BackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leu/chainfire/lumen/services/BackgroundService$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Leu/chainfire/lumen/services/BackgroundService$k;

.field public static final enum b:Leu/chainfire/lumen/services/BackgroundService$k;

.field public static final enum c:Leu/chainfire/lumen/services/BackgroundService$k;

.field public static final enum d:Leu/chainfire/lumen/services/BackgroundService$k;

.field private static final synthetic e:[Leu/chainfire/lumen/services/BackgroundService$k;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Leu/chainfire/lumen/services/BackgroundService$k;

    const-string v1, "MASTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leu/chainfire/lumen/services/BackgroundService$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leu/chainfire/lumen/services/BackgroundService$k;->a:Leu/chainfire/lumen/services/BackgroundService$k;

    new-instance v1, Leu/chainfire/lumen/services/BackgroundService$k;

    const-string v3, "DAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leu/chainfire/lumen/services/BackgroundService$k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leu/chainfire/lumen/services/BackgroundService$k;->b:Leu/chainfire/lumen/services/BackgroundService$k;

    new-instance v3, Leu/chainfire/lumen/services/BackgroundService$k;

    const-string v5, "SUNDOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leu/chainfire/lumen/services/BackgroundService$k;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leu/chainfire/lumen/services/BackgroundService$k;->c:Leu/chainfire/lumen/services/BackgroundService$k;

    new-instance v5, Leu/chainfire/lumen/services/BackgroundService$k;

    const-string v7, "SLEEP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Leu/chainfire/lumen/services/BackgroundService$k;-><init>(Ljava/lang/String;I)V

    sput-object v5, Leu/chainfire/lumen/services/BackgroundService$k;->d:Leu/chainfire/lumen/services/BackgroundService$k;

    const/4 v7, 0x4

    new-array v7, v7, [Leu/chainfire/lumen/services/BackgroundService$k;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Leu/chainfire/lumen/services/BackgroundService$k;->e:[Leu/chainfire/lumen/services/BackgroundService$k;

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

.method public static valueOf(Ljava/lang/String;)Leu/chainfire/lumen/services/BackgroundService$k;
    .locals 1

    const-class v0, Leu/chainfire/lumen/services/BackgroundService$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leu/chainfire/lumen/services/BackgroundService$k;

    return-object p0
.end method

.method public static values()[Leu/chainfire/lumen/services/BackgroundService$k;
    .locals 1

    sget-object v0, Leu/chainfire/lumen/services/BackgroundService$k;->e:[Leu/chainfire/lumen/services/BackgroundService$k;

    invoke-virtual {v0}, [Leu/chainfire/lumen/services/BackgroundService$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leu/chainfire/lumen/services/BackgroundService$k;

    return-object v0
.end method
