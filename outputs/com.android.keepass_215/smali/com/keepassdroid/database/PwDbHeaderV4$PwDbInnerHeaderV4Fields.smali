.class public Lcom/keepassdroid/database/PwDbHeaderV4$PwDbInnerHeaderV4Fields;
.super Ljava/lang/Object;
.source "PwDbHeaderV4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/PwDbHeaderV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PwDbInnerHeaderV4Fields"
.end annotation


# static fields
.field public static final Binary:B = 0x3t

.field public static final EndOfHeader:B = 0x0t

.field public static final InnerRandomStreamID:B = 0x1t

.field public static final InnerRandomstreamKey:B = 0x2t


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/database/PwDbHeaderV4;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/PwDbHeaderV4;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/keepassdroid/database/PwDbHeaderV4$PwDbInnerHeaderV4Fields;->this$0:Lcom/keepassdroid/database/PwDbHeaderV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
