.class Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;
.super Ljava/lang/Object;
.source "ImportKeysAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyState"
.end annotation


# instance fields
.field mAlreadyPresent:Z

.field mDownloaded:Z

.field mProgress:Z

.field mShowed:Z

.field mVerified:Z

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 317
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 318
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mAlreadyPresent:Z

    .line 319
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mVerified:Z

    .line 321
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mProgress:Z

    .line 322
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mDownloaded:Z

    .line 323
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;->mShowed:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$1;)V
    .locals 0

    .line 317
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter$KeyState;-><init>(Lorg/sufficientlysecure/keychain/ui/adapter/ImportKeysAdapter;)V

    return-void
.end method
