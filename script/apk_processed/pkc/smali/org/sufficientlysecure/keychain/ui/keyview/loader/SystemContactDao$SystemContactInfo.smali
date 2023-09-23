.class public Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;
.super Ljava/lang/Object;
.source "SystemContactDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemContactInfo"
.end annotation


# instance fields
.field public final contactId:J

.field public final contactName:Ljava/lang/String;

.field public final contactPicture:Landroid/graphics/Bitmap;

.field final masterKeyId:J


# direct methods
.method constructor <init>(JJLjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move-wide/16 p0, p3

    move-object/16 p2, p5

    move-object/16 p3, p6

    .line 130
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-wide v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;->masterKeyId:J

    .line 132
    iput-wide p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;->contactId:J

    .line 133
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;->contactName:Ljava/lang/String;

    .line 134
    iput-object p3, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;->contactPicture:Landroid/graphics/Bitmap;

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;---><init>(JJLjava/lang/String;Landroid/graphics/Bitmap;)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
