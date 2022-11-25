.class public Lcom/keepassdroid/utils/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field private static final dotNetEpoch:Lorg/joda/time/DateTime;

.field private static final epochOffset:J

.field private static final javaEpoch:Lorg/joda/time/DateTime;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 29
    new-instance v8, Lorg/joda/time/DateTime;

    sget-object v7, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/DateTime;-><init>(IIIIIILorg/joda/time/DateTimeZone;)V

    sput-object v8, Lcom/keepassdroid/utils/DateUtil;->dotNetEpoch:Lorg/joda/time/DateTime;

    .line 30
    new-instance v0, Lorg/joda/time/DateTime;

    sget-object v16, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    const/16 v10, 0x7b2

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/joda/time/DateTime;-><init>(IIIIIILorg/joda/time/DateTimeZone;)V

    sput-object v0, Lcom/keepassdroid/utils/DateUtil;->javaEpoch:Lorg/joda/time/DateTime;

    .line 35
    invoke-virtual {v8}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    .line 36
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    .line 38
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    invoke-virtual {v8}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/keepassdroid/utils/DateUtil;->epochOffset:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDateToKDBX4Time(Lorg/joda/time/DateTime;)J
    .locals 4

    .line 55
    :try_start_0
    sget-object v0, Lcom/keepassdroid/utils/DateUtil;->javaEpoch:Lorg/joda/time/DateTime;

    invoke-static {v0, p0}, Lorg/joda/time/Seconds;->secondsBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Seconds;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lorg/joda/time/Seconds;->getSeconds()I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Lcom/keepassdroid/utils/DateUtil;->epochOffset:J
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v2

    return-wide v0

    .line 59
    :catch_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 61
    sget-wide v2, Lcom/keepassdroid/utils/DateUtil;->epochOffset:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertKDBX4Time(J)Ljava/util/Date;
    .locals 3

    .line 43
    sget-object v0, Lcom/keepassdroid/utils/DateUtil;->dotNetEpoch:Lorg/joda/time/DateTime;

    const-wide/16 v1, 0x3e8

    mul-long p0, p0, v1

    invoke-virtual {v0, p0, p1}, Lorg/joda/time/DateTime;->plus(J)Lorg/joda/time/DateTime;

    move-result-object p0

    .line 46
    sget-object p1, Lcom/keepassdroid/utils/DateUtil;->javaEpoch:Lorg/joda/time/DateTime;

    invoke-virtual {p0, p1}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/ReadableInstant;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateTime;->toDate()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method
