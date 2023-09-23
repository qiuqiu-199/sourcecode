.class final Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$1;
.super Ljava/lang/Object;
.source "CustomColumnAdapters.java"

# interfaces
.implements Lcom/squareup/sqldelight/ColumnAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/squareup/sqldelight/ColumnAdapter<",
        "Ljava/util/Date;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$1;->decode(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/Long;)Ljava/util/Date;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 23
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$1;--->decode(Ljava/lang/Long;)Ljava/util/Date;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public encode(Ljava/util/Date;)Ljava/lang/Long;
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 28
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$1;--->encode(Ljava/util/Date;)Ljava/lang/Long;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters$1;->encode(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
