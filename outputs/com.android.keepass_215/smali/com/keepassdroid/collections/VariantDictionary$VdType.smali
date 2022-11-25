.class Lcom/keepassdroid/collections/VariantDictionary$VdType;
.super Ljava/lang/Object;
.source "VariantDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/collections/VariantDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VdType"
.end annotation


# static fields
.field public static final Bool:B = 0x8t

.field public static final ByteArray:B = 0x42t

.field public static final Int32:B = 0xct

.field public static final Int64:B = 0xdt

.field public static final None:B = 0x0t

.field public static final String:B = 0x18t

.field public static final UInt32:B = 0x4t

.field public static final UInt64:B = 0x5t


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/collections/VariantDictionary;

.field public final type:B

.field public final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/keepassdroid/collections/VariantDictionary;BLjava/lang/Object;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/keepassdroid/collections/VariantDictionary$VdType;->this$0:Lcom/keepassdroid/collections/VariantDictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-byte p2, p0, Lcom/keepassdroid/collections/VariantDictionary$VdType;->type:B

    .line 53
    iput-object p3, p0, Lcom/keepassdroid/collections/VariantDictionary$VdType;->value:Ljava/lang/Object;

    return-void
.end method
