.class interface abstract Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity$SecurityTokenListenerFragment;
.super Ljava/lang/Object;
.source "CreateKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SecurityTokenListenerFragment"
.end annotation


# virtual methods
.method public abstract doSecurityTokenInBackground()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onSecurityTokenPostExecute()V
.end method
